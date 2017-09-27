.class public Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;
.super Ljava/lang/Object;
.source "ShareAccVariable.java"


# static fields
.field public static final ACC_SETTING_FILE_INTERNAL_FOLDER_PATH:Ljava/lang/String;

.field public static final ACC_SETTING_FILE_MOST_INTERNAL_PATH:Ljava/lang/String;

.field public static DATE_FORMAT:Ljava/lang/String;

.field public static FILE_NAME:Ljava/lang/String;

.field public static SaveFlag:I

.field public static export_external_file:Ljava/io/File;

.field public static export_internal_file:Ljava/io/File;

.field public static fis:Ljava/io/FileInputStream;

.field public static final keyList:[Ljava/lang/String;

.field public static final mCurConfig:Landroid/content/res/Configuration;

.field public static ois:Ljava/io/ObjectInputStream;

.field public static final sInstalledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x3a

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 65
    const/16 v0, 0x5d

    new-array v0, v0, [Ljava/lang/String;

    .line 68
    const-string/jumbo v1, "speak_password"

    aput-object v1, v0, v4

    .line 69
    const-string/jumbo v1, "anykey_mode"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 70
    const-string/jumbo v1, "answering_bring_to_ear"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 71
    const-string/jumbo v1, "answering_accessibility_tapping"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 73
    const-string/jumbo v1, "voice_input_control"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 74
    const-string/jumbo v1, "voice_input_control_incomming_calls"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 75
    const-string/jumbo v1, "incall_power_button_behavior"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 76
    const-string/jumbo v1, "accessibility_enabled"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 77
    const-string/jumbo v1, "accessiblity_font_switch"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 78
    const-string/jumbo v1, "font_size"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 79
    const-string/jumbo v1, "font_scale"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 80
    const-string/jumbo v1, "accessibility_display_magnification_enabled"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 81
    const-string/jumbo v1, "high_contrast"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 82
    const-string/jumbo v1, "color_blind"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 83
    const-string/jumbo v1, "color_blind_test"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 87
    const-string/jumbo v1, "color_blind_cvdtype"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "color_blind_cvdseverity"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 89
    const-string/jumbo v1, "color_blind_user_parameter"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 90
    const-string/jumbo v1, "tts_engine"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 91
    const-string/jumbo v1, "tts_default_rate"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 92
    const-string/jumbo v1, "accessibility_script_injection"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 93
    const-string/jumbo v1, "audio_balance"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 94
    const-string/jumbo v1, "sound_balance"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 95
    const-string/jumbo v1, "show_button_background"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 96
    const-string/jumbo v1, "mono_audio_db"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 97
    const-string/jumbo v1, "all_sound_off"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 98
    const-string/jumbo v1, "switch_access_key"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 99
    const-string/jumbo v1, "flash_notification"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 100
    const-string/jumbo v1, "assistant_menu"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 101
    const-string/jumbo v1, "assistant_menu_dominant_hand_type"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 102
    const-string/jumbo v1, "assistant_menu_pointer_speed"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 103
    const-string/jumbo v1, "assistant_menu_pointer_size"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 104
    const-string/jumbo v1, "assistant_menu_pad_size"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 105
    const-string/jumbo v1, "long_press_timeout"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 106
    const-string/jumbo v1, "enable_accessibility_global_gesture_enabled"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 107
    const-string/jumbo v1, "access_control_use"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 108
    const-string/jumbo v1, "access_control_power_button"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 109
    const-string/jumbo v1, "access_control_volume_button"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 110
    const-string/jumbo v1, "access_control_keyboard_block"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 111
    const-string/jumbo v1, "access_control_time_set_hour"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 112
    const-string/jumbo v1, "access_control_time_set_min"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 113
    const-string/jumbo v1, "lcd_curtain"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 114
    const-string/jumbo v1, "ultrasonic_cane"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 115
    const-string/jumbo v1, "haptic_feedback_enabled"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 116
    const-string/jumbo v1, "haptic_feedback_extra"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 117
    const-string/jumbo v1, "easy_interaction"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 118
    const-string/jumbo v1, "notification_reminder"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 119
    const-string/jumbo v1, "time_key"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    .line 120
    const-string/jumbo v1, "notification_reminder_selectable"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 121
    const-string/jumbo v1, "time_key_selectable"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    .line 122
    const-string/jumbo v1, "notification_reminder_vibrate"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    .line 123
    const-string/jumbo v1, "notification_reminder_led_indicator"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    .line 125
    const-string/jumbo v1, "hearing_aid"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    .line 126
    const-string/jumbo v1, "air_motion_call_accept"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    .line 127
    const-string/jumbo v1, "accessibility_captioning_enabled"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    .line 128
    const-string/jumbo v1, "accessibility_captioning_font_scale"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    .line 129
    const-string/jumbo v1, "accessibility_captioning_preset"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    .line 130
    const-string/jumbo v1, "accessibility_captioning_typeface"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    .line 131
    const-string/jumbo v1, "accessibility_captioning_foreground_color"

    aput-object v1, v0, v5

    .line 132
    const-string/jumbo v1, "accessibility_captioning_edge_type"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    .line 133
    const-string/jumbo v1, "accessibility_captioning_edge_color"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 134
    const-string/jumbo v1, "accessibility_captioning_window_color"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    .line 135
    const-string/jumbo v1, "accessibility_captioning_background_color"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    .line 136
    const-string/jumbo v1, "accessibility_captioning_locale"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    .line 137
    const-string/jumbo v1, "accessibility_sec_captioning_enabled"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    .line 138
    const-string/jumbo v1, "rapid_key_input"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    .line 139
    const-string/jumbo v1, "rapid_key_input_menu_checked"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    .line 140
    const-string/jumbo v1, "air_motion_wake_up"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    .line 141
    const-string/jumbo v1, "direct_access"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    .line 142
    const-string/jumbo v1, "direct_accessibility"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    .line 143
    const-string/jumbo v1, "direct_talkback"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    .line 144
    const-string/jumbo v1, "direct_negative"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    .line 145
    const-string/jumbo v1, "smart_scroll"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    .line 146
    const-string/jumbo v1, "face_smart_scroll"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    .line 147
    const-string/jumbo v1, "smart_scroll_sensitivity"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    .line 148
    const-string/jumbo v1, "smart_scroll_visual_feedback_icon"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    .line 149
    const-string/jumbo v1, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    .line 152
    const-string/jumbo v1, "accessibility_magnifier"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    .line 153
    const-string/jumbo v1, "hover_zoom_value"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    .line 154
    const-string/jumbo v1, "hover_zoom_magnifier_size"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    .line 156
    const-string/jumbo v1, "direct_access_control"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    .line 157
    const-string/jumbo v1, "direct_greyscale"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    .line 158
    const-string/jumbo v1, "direct_color_adjustment"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    .line 159
    const-string/jumbo v1, "direct_s_talkback"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    .line 160
    const-string/jumbo v1, "direct_universal_switch"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    .line 161
    const-string/jumbo v1, "direct_access_magnifier"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    .line 163
    const-string/jumbo v1, "greyscale_mode"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    .line 164
    const-string/jumbo v1, "galaxy_talkback"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    .line 165
    const-string/jumbo v1, "accessibility_display_inversion_enabled"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    .line 166
    const-string/jumbo v1, "accessibility_display_daltonizer_enabled"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    .line 167
    const-string/jumbo v1, "accessibility_display_daltonizer"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    .line 168
    const-string/jumbo v1, "high_text_contrast_enabled"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    .line 169
    const-string/jumbo v1, "high_contrast_keyboard"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    .line 65
    sput-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    .line 186
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->mCurConfig:Landroid/content/res/Configuration;

    .line 188
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->sInstalledServices:Ljava/util/Set;

    .line 190
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-direct {v0, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/storage/emulated/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Accessibility"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->ACC_SETTING_FILE_INTERNAL_FOLDER_PATH:Ljava/lang/String;

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/storage/emulated/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->ACC_SETTING_FILE_MOST_INTERNAL_PATH:Ljava/lang/String;

    .line 207
    const-string/jumbo v0, "yyyyMMdd"

    sput-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->DATE_FORMAT:Ljava/lang/String;

    .line 214
    sput-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->FILE_NAME:Ljava/lang/String;

    .line 216
    sput v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->SaveFlag:I

    .line 219
    sput-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->fis:Ljava/io/FileInputStream;

    .line 220
    sput-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->ois:Ljava/io/ObjectInputStream;

    .line 221
    sput-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    .line 222
    sput-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_external_file:Ljava/io/File;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
