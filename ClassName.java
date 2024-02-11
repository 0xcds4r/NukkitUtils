package ClassFolder;

import cn.nukkit.plugin.*;

public class ClassName extends PluginBase
{
    @Override
    public void onEnable() {
        getLogger().info("ExamplePlugin enabled");
    }

    @Override
    public void onDisable() {
        getLogger().info("ExamplePlugin disabled");
    }
}