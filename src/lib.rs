use zed_extension_api as zed;

struct GnExtension;

impl zed::Extension for GnExtension {
    fn new() -> Self {
        Self
    }

    fn language_server_command(
        &mut self,
        _id: &zed::LanguageServerId,
        worktree: &zed::Worktree,
    ) -> zed::Result<zed::Command> {
        let path = worktree
            .which("gn-language-server")
            .ok_or_else(|| "gn-language-server not found in PATH".to_string())?;

        Ok(zed::Command {
            command: path,
            args: vec![],
            env: vec![],
        })
    }
}

zed::register_extension!(GnExtension);
