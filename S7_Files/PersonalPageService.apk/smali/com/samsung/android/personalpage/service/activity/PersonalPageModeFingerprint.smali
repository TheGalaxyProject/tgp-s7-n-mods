.class public Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;
.super Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;
.source "PersonalPageModeFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;
    }
.end annotation


# static fields
.field public static final FAILED_ATTEMPT_TIMEOUT_MS:J = 0x7530L

.field private static final TAG:Ljava/lang/String; = "PersonalPageModeFingerprint"


# instance fields
.field private final PREF_ATTEMPT_DEADLINE:Ljava/lang/String;

.field private final PREF_ATTEMPT_DEADLINE_PIN:Ljava/lang/String;

.field private final PREF_ATTEMPT_DEADLINE_PWD:Ljava/lang/String;

.field private backupLockType:I

.field private mContext:Landroid/content/Context;

.field private mFingerprintDialog:Landroid/app/Dialog;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field final mH:Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0
    .param p1, "evt"    # Lcom/samsung/android/fingerprint/FingerprintEvent;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->handleFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->handleIdentify()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0
    .param p1, "evt"    # Lcom/samsung/android/fingerprint/FingerprintEvent;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->requestFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mContext:Landroid/content/Context;

    .line 50
    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 52
    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintDialog:Landroid/app/Dialog;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->backupLockType:I

    .line 56
    new-instance v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;

    invoke-direct {v0, p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;)V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mH:Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;

    .line 58
    const-string/jumbo v0, "pref_attempt_deadline"

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->PREF_ATTEMPT_DEADLINE:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "pref_attempt_deadline_passwd"

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->PREF_ATTEMPT_DEADLINE_PWD:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, "pref_attempt_deadline_pin"

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->PREF_ATTEMPT_DEADLINE_PIN:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private getDeadline()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 242
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 243
    .local v4, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "personal_mode_lock_type"

    invoke-static {v5, v6, v7, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 244
    .local v3, "lockType":I
    const/4 v2, 0x0

    .line 245
    .local v2, "key":Ljava/lang/String;
    const/4 v5, 0x5

    if-gt v3, v5, :cond_0

    .line 246
    return-wide v8

    .line 248
    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 259
    const-string/jumbo v5, "PersonalPageModeFingerprint"

    const-string/jumbo v6, "Not Supported locktype"

    invoke-static {v5, v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .end local v2    # "key":Ljava/lang/String;
    :goto_0
    invoke-interface {v4, v2, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 265
    .local v0, "deadline":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x7530

    add-long/2addr v6, v8

    cmp-long v5, v0, v6

    if-lez v5, :cond_1

    .line 266
    const-string/jumbo v5, "PersonalPageModeFingerprint"

    const-string/jumbo v6, "Wrong deadline is detected."

    invoke-static {v5, v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget v5, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mNumWrongConfirmAttempts:I

    if-nez v5, :cond_2

    .line 269
    const-string/jumbo v5, "PersonalPageModeFingerprint"

    const-string/jumbo v6, "Deadline PIN initialize"

    invoke-static {v5, v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-wide/16 v0, 0x0

    .line 275
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->setDeadline(J)V

    .line 277
    :cond_1
    return-wide v0

    .line 250
    .end local v0    # "deadline":J
    .restart local v2    # "key":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v2, "pref_attempt_deadline_passwd"

    .local v2, "key":Ljava/lang/String;
    goto :goto_0

    .line 253
    .local v2, "key":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v2, "pref_attempt_deadline"

    .local v2, "key":Ljava/lang/String;
    goto :goto_0

    .line 256
    .local v2, "key":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v2, "pref_attempt_deadline_pin"

    .local v2, "key":Ljava/lang/String;
    goto :goto_0

    .line 272
    .end local v2    # "key":Ljava/lang/String;
    .restart local v0    # "deadline":J
    :cond_2
    const-string/jumbo v5, "PersonalPageModeFingerprint"

    const-string/jumbo v6, "Assign new deadline"

    invoke-static {v5, v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->getFailedAttemptTimeOutMS()J

    move-result-wide v8

    add-long v0, v6, v8

    goto :goto_1

    .line 248
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private handleFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 3
    .param p1, "evt"    # Lcom/samsung/android/fingerprint/FingerprintEvent;

    .prologue
    .line 148
    iget v0, p1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    packed-switch v0, :pswitch_data_0

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 150
    :pswitch_0
    const-string/jumbo v0, "PersonalPageModeFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FingerprintEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget v0, p1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v0, :cond_1

    .line 152
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->verifySucess()V

    goto :goto_0

    .line 153
    :cond_1
    iget v0, p1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 154
    iget v0, p1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->destroyByDoubleVerification:Z

    .line 156
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->launchBackupKey()V

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->finish()V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private handleIdentify()V
    .locals 8

    .prologue
    const/4 v6, 0x5

    const v5, 0x7f06002e

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 200
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v2, :cond_0

    .line 202
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->isSensorReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->finish()V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 208
    .local v0, "attribute":Landroid/os/Bundle;
    iget v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->backupLockType:I

    if-le v2, v6, :cond_3

    iget v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->backupLockType:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_3

    .line 209
    iget v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->backupLockType:I

    packed-switch v2, :pswitch_data_0

    .line 223
    const-string/jumbo v2, "PersonalPageModeFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Not supported backup locktype : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->backupLockType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    new-instance v3, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$1;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;)V

    invoke-virtual {v2, p0, v3, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->identifyWithDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I

    move-result v1

    .local v1, "result":I
    goto :goto_0

    .line 211
    .end local v1    # "result":I
    :pswitch_0
    const-string/jumbo v2, "button_name"

    .line 212
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06002d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 215
    :pswitch_1
    const-string/jumbo v2, "button_name"

    .line 216
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06002c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 219
    :pswitch_2
    const-string/jumbo v2, "button_name"

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06002b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 226
    :cond_3
    iget v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->backupLockType:I

    if-ne v2, v6, :cond_2

    .line 227
    const-string/jumbo v2, "button_name"

    const v3, 0x7f06002f

    invoke-virtual {p0, v3}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private initFingerprintManager()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 131
    :cond_0
    return-void
.end method

.method private launchBackupKey()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 169
    .local v0, "pwIntent":Landroid/content/Intent;
    iget v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->backupLockType:I

    packed-switch v1, :pswitch_data_0

    .line 184
    const-string/jumbo v1, "PersonalPageModeFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not supported backup locktype : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->backupLockType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :goto_0
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 188
    const-string/jumbo v1, "FINGERPRINT"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->startActivity(Landroid/content/Intent;)V

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->finish()V

    .line 167
    return-void

    .line 171
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 174
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 177
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 180
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 181
    const-string/jumbo v1, "FINGERPRINTPWD"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private requestFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 3
    .param p1, "evt"    # Lcom/samsung/android/fingerprint/FingerprintEvent;

    .prologue
    .line 143
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mH:Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;

    const/16 v2, 0x400

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 144
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 142
    return-void
.end method

.method private requestIdentify()V
    .locals 2

    .prologue
    const/16 v1, 0x401

    .line 194
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mH:Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;->removeMessages(I)V

    .line 195
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mH:Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;->sendEmptyMessage(I)Z

    .line 193
    return-void
.end method

.method private setDeadline(J)V
    .locals 3
    .param p1, "deadline"    # J

    .prologue
    .line 281
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 282
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "pref_attempt_deadline"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 280
    return-void
.end method

.method private verifySucess()V
    .locals 2

    .prologue
    .line 138
    const-string/jumbo v0, "PersonalPageModeFingerprint"

    const-string/jumbo v1, "veritySucess"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->requestPrivateModeOn()V

    .line 137
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    iput-object p0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "personal_backup_lock_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->backupLockType:I

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->initFingerprintManager()V

    .line 107
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->requestIdentify()V

    .line 101
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 112
    invoke-super {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onResume()V

    .line 113
    const-string/jumbo v2, "PersonalPageModeFingerprint"

    const-string/jumbo v3, "onResume"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->getDeadline()J

    move-result-wide v0

    .line 116
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->launchBackupKey()V

    .line 111
    :cond_0
    return-void
.end method
