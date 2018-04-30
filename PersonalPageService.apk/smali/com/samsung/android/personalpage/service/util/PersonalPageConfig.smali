.class public Lcom/samsung/android/personalpage/service/util/PersonalPageConfig;
.super Ljava/lang/Object;
.source "PersonalPageConfig.java"


# static fields
.field public static final ACTION_CHECK_M2P_STATE:Ljava/lang/String; = "com.samsung.android.personalpage.action.CHECK_M2P"

.field public static final ACTION_PRIVATE_FINGER_BACKUP_LAUNCH:Ljava/lang/String; = "com.samsung.android.intent.action.PRIVATE_MODE_FINGER_BACKUP_LAUNCH"

.field public static final ACTION_SHOW_DISCLAIMER:Ljava/lang/String; = "com.samsung.android.personalpage.action.ACTION_SHOW_DISCLAIMER"

.field public static final ACTION_START_SERVICE:Ljava/lang/String; = "com.samsung.android.personalpage.action.START_SERVICE"

.field public static final CONFIG_ALERT_UNLOCK_TYPE:Z = true

.field public static final DB_NAME_FINGER_RESET:Ljava/lang/String; = "finger_reset_change"

.field public static final DB_NAME_PERSONAL_MODE_LOCK_TYPE:Ljava/lang/String; = "personal_mode_lock_type"

.field public static final DB_NAME_PRIVATE_MODE_AUTO_DISABLE_SCREENOFF:Ljava/lang/String; = "personal_mode_auto_disable_when_screen_off"

.field public static final DB_NAME_PRIVATE_MODE_STATUS:Ljava/lang/String; = "personal_mode_enabled"

.field public static final DB_PRIVATE_MODE_OFF:I = 0x0

.field public static final DB_PRIVATE_MODE_OFF_ING:I = 0x2

.field public static final DB_PRIVATE_MODE_ON:I = 0x1

.field public static final DB_PRIVATE_MODE_ON_ING:I = 0x3

.field public static final FAILED_ATTEMPT_TIMEOUT_10_MIN:J = 0x927c0L

.field public static final FAILED_ATTEMPT_TIMEOUT_1_MIN:J = 0xea60L

.field public static final FAILED_ATTEMPT_TIMEOUT_30_MIN:J = 0x1b7740L

.field public static final FAILED_ATTEMPT_TIMEOUT_5_MIN:J = 0x493e0L

.field public static final FAILED_ATTEMPT_TIMEOUT_60_MIN:J = 0x36ee80L

.field public static final FAILED_ATTEMPT_TIMEOUT_MS:J = 0x7530L

.field public static final INTENT_PRIVATE_FINGER_RESET:Ljava/lang/String; = "com.samsung.android.intent.action.PRIVATE_MODE_FINGER_RESET"

.field public static final LOCK_OUT_TIME:Ljava/lang/String; = "lock_out_time"

.field public static final LOCK_TYPE_FINGERPRINT:I = 0x5

.field public static final LOCK_TYPE_FINGERPRINT_PASSWORD:I = 0x8

.field public static final LOCK_TYPE_FINGERPRINT_PATTERN:I = 0x6

.field public static final LOCK_TYPE_FINGERPRINT_PIN:I = 0x7

.field public static final LOCK_TYPE_NONE:I = 0x0

.field public static final LOCK_TYPE_PASSWORD:I = 0x4

.field public static final LOCK_TYPE_PATTERN:I = 0x2

.field public static final LOCK_TYPE_PIN:I = 0x3

.field public static final LOCK_TYPE_SIGNATURE:I = 0x1

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.personalpage.service"

.field public static final PREF_DISCLAIMER_NOTI:Ljava/lang/String; = "pref_pp_disclaimer_noti"

.field public static final PREF_DISCLAIMER_NOTI_FOR_LOCK:Ljava/lang/String; = "pref_pp_disclaimer_noti_for_lock"

.field public static final PREF_DISCLAIMER_NOTI_NORMAL_OFF:Ljava/lang/String; = "pref_pp_normal_off_disclaimer_noti"

.field public static final PREF_DISCLAIMER_NOTI_NORMAL_ON:Ljava/lang/String; = "pref_pp_normal_on_disclaimer_noti"

.field public static final PREF_PM_FISRT_MOUNT:Ljava/lang/String; = "pref_pm_first_mount"

.field public static final VERIFICATION_FINGERPRINT:Ljava/lang/String; = "FINGERPRINT"

.field public static final VERIFICATION_FINGERPRINT_BACKUP:Ljava/lang/String; = "personal_backup_lock_type"

.field public static final VERIFICATION_FINGERPRINT_PASSWORD:Ljava/lang/String; = "FINGERPRINTPWD"

.field public static final VERIFICATION_REQUEST_FROM_M2P:Ljava/lang/String; = "M2P"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
