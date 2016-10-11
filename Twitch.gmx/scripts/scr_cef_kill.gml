///scr_cef_kill()

var _batch = file_text_open_write( "close_" + CEF_EXE_NAME + ".bat" );
file_text_write_string( _batch, "@echo off" );
file_text_writeln( _batch );
file_text_write_string( _batch, "taskkill /IM " + CEF_EXE_NAME + " /F");
file_text_close( _batch );
shell_execute( CEF_BATCH_DIRECTORY + "\" + "close_" + CEF_EXE_NAME + ".bat", "" );
