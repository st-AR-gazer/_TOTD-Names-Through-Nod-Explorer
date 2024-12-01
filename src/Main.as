const string TARGET_PATH = "Media/ManiaApps/Nadeo/Trackmania/Menus/MainMenu.Script.txt";

void Main() {
    // CSystemFidFile@ fid = Fids::GetFake("Titles\\Trackmania\\" + TARGET_PATH);

    // if (fid is null) {
    //     error("Failed to get fid for " + TARGET_PATH);
    //     return;
    // }

    // CMwNod@ nod = Fids::Preload(fid);

    // if (nod is null) {
    //     error("Failed to preload the nod for " + TARGET_PATH);
    //     return;
    // }

    // CPlugFileTextScript@ ml_page = cast<CPlugFileTextScript>(nod);

    // if (ui is null) {
    //     error("Failed to cast the nod to CGameUILayer for " + TARGET_PATH);
    //     return;
    // }
    auto ui = cast<CTrackMania@>(GetApp()).MenuManager.MenuCustom_CurrentManiaApp.UILayers[26];

    CGameManialinkFrame@ frame_global = cast<CGameManialinkFrame>(ui.LocalPage.MainFrame.Controls[0]); // #17066
    CGameManialinkFrame@ frame_track_browser = cast<CGameManialinkFrame>(frame_global.Controls[0]); // #17068
    CGameManialinkFrame@ trackmania_track_browser__frame_global = cast<CGameManialinkFrame>(frame_track_browser.Controls[0]); // #17079
    CGameManialinkFrame@ trackmania_track_browser__frame_official = cast<CGameManialinkFrame>(trackmania_track_browser__frame_global.Controls[5]); // #17086
    CGameManialinkFrame@ trackmania_track_browser__frame_scroll_totd = cast<CGameManialinkFrame>(trackmania_track_browser__frame_official.Controls[4]);

    CGameManialinkFrame@ trackmania_track_browser____MENU_LIBS_scroll_event_1 = cast<CGameManialinkFrame>(trackmania_track_browser__frame_scroll_totd.Controls[1]);
    CGameManialinkFrame@ trackmania_track_browser__frame_years_totd_1 = cast<CGameManialinkFrame>(trackmania_track_browser____MENU_LIBS_scroll_event_1.Controls[0]);

    CGameManialinkLabel@ trackmania_track_browser__label_year = cast<CGameManialinkLabel>(trackmania_track_browser__frame_years_totd_1.Controls[0]);

    print("Year: " + trackmania_track_browser__label_year.Value);


}
