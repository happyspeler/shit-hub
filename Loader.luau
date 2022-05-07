if not syn or not KRNL_LOADED then
    local UnsupportedExploit = Instance.new("Hint", workspace);
    UnsupportedExploit.Text = "Exploit might be unsupported, consider using krnl or synapse (krnl.ca)";
    game.Debris:AddItem(UnsupportedExploit, 5)
end

