LG V10D

Touch sounds speaker
1: low-latency-playback
OUT: 2: speaker
acdb_id = 14
app_type 69937
48000

Touch sounds headset
1: low-latency-playback
OUT: 6: headphones
acdb_id = 10 
app_type 69937
48000

Voice recording handset mic
15: audio-record
IN: handset-mic -> 148: voice-memo
acdb_id = 1063

Voice recording headset mic
15: audio-record
IN: headset-mic -> 150: headset-voice-memo
acdb_id = 1066

Music speaker
0: deep-buffer-playback
OUT: 2: speaker
acdb_id = 14
app_type 69936
48000

Music headset
0: deep-buffer-playback
OUT: 6: headphones
acdb_id = 10
app_type 69936
48000

Voice call handset
19: voice-call
OUT: 10: voice-handset
IN: 81: handset-mic
acdb_rx = 7, acdb_tx = 4
app_type 69937

Voice call speaker
19: voice-call
OUT: 11: voice-speaker
IN: 100: voice-speaker-mic
acdb_rx = 14, acdb_tx = 11
app_type 69937

Voice call headset
19: voice-call
OUT: 12: voice-headphones
IN: 101: voice-headset-mic
acdb_rx = 10, acdb_tx = 8
app_type 69937

VOIP handset
15: audio-record
OUT: 71: voip-earpiece
IN: 179: voip-handset-mic
acdb_rx = 1118, acdb_tx = 1131
48000

VOIP headset
15: audio-record
OUT: 73: voip-headphones
IN: 177: voip-headset-mic)
acdb_rx = 1120, acdb_tx = 1122
48000
