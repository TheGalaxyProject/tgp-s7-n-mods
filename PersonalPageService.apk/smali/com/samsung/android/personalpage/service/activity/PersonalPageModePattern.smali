.class public Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;
.super Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;
.source "PersonalPageModePattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$1;,
        Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$2;,
        Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;
    }
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-personalpage-service-activity-PersonalPageModePattern$StageSwitchesValues:[I = null

.field private static final EXTRA_KEY_PASSWORD:Ljava/lang/String; = "password"

.field public static final FOOTER_TEXT:Ljava/lang/String; = "com.samsung.android.personalpage.service.SecretModePattern.footer"

.field public static final FOOTER_WRONG_TEXT:Ljava/lang/String; = "com.samsung.android.personalpage.service.SecretModePattern.footer_wrong"

.field public static final HEADER_TEXT:Ljava/lang/String; = "com.samsung.android.personalpage.service.SecretModePattern.header"

.field public static final HEADER_WRONG_TEXT:Ljava/lang/String; = "com.samsung.android.personalpage.service.SecretModePattern.header_wrong"

.field public static final PACKAGE:Ljava/lang/String; = "com.samsung.android.personalpage.service"

.field private static final RIGHT_MARGIN_WITHOUT_BACKUP_PIN:I = 0xe

.field private static final RIGHT_MARGIN_WITH_BACKUP_PIN:I = 0x56

.field private static final TAG:Ljava/lang/String; = "PersonalPageModePattern"

.field private static final WRONG_PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0


# instance fields
.field private final PREF_ATTEMPT_DEADLINE:Ljava/lang/String;

.field private imgbtn:Landroid/widget/ImageButton;

.field private isPatternimage:I

.field private isTablet:Z

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mHeaderText:Ljava/lang/CharSequence;

.field private mHeaderWrongText:Ljava/lang/CharSequence;

.field private mInfoTextView:Landroid/widget/TextView;

.field mIsVerificationMode:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mSecretLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private subtextView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->imgbtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mInfoTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)Lcom/android/internal/widget/LockPatternView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method private static synthetic -getcom-samsung-android-personalpage-service-activity-PersonalPageModePattern$StageSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->-com-samsung-android-personalpage-service-activity-PersonalPageModePattern$StageSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->-com-samsung-android-personalpage-service-activity-PersonalPageModePattern$StageSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;->values()[Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;->LockedOut:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;

    invoke-virtual {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;->NeedToUnlock:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;

    invoke-virtual {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;->NeedToUnlockWrong:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;

    invoke-virtual {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->-com-samsung-android-personalpage-service-activity-PersonalPageModePattern$StageSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)J
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->getDeadline()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->postClearPatternRunnable()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->setDeadline(J)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;-><init>()V

    iput v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->isPatternimage:I

    const-string/jumbo v0, "pref_attempt_deadline"

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->PREF_ATTEMPT_DEADLINE:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mIsVerificationMode:Z

    iput-boolean v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->isTablet:Z

    new-instance v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$1;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mSecretLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    new-instance v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$2;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private InitPatternview(Landroid/os/Bundle;)V
    .locals 4

    const-string/jumbo v1, "PersonalPageModePattern"

    const-string/jumbo v2, "InitPatternview()"

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f080002

    invoke-virtual {p0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockPatternView;

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const v1, 0x7f080004

    invoke-virtual {p0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mInfoTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "com.samsung.android.personalpage.service.SecretModePattern.header"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mHeaderText:Ljava/lang/CharSequence;

    const-string/jumbo v1, "com.samsung.android.personalpage.service.SecretModePattern.header_wrong"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mHeaderWrongText:Ljava/lang/CharSequence;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mSecretLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    sget-object v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;->NeedToUnlock:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;

    invoke-direct {p0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;)V

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->savedPrivateModePasswordExists(Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->finish()V

    :cond_1
    return-void
.end method

.method private getDeadline()J
    .locals 8

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "pref_attempt_deadline"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->getFailedAttemptTimeOutMS()J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    const-string/jumbo v3, "PersonalPageModePattern"

    const-string/jumbo v4, "Wrong deadline is detected."

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mNumWrongConfirmAttempts:I

    if-nez v3, :cond_1

    const-string/jumbo v3, "PersonalPageModePattern"

    const-string/jumbo v4, "Deadline initialize"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->setDeadline(J)V

    :cond_0
    return-wide v0

    :cond_1
    const-string/jumbo v3, "PersonalPageModePattern"

    const-string/jumbo v4, "Assign new deadline"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->getFailedAttemptTimeOutMS()J

    move-result-wide v6

    add-long v0, v4, v6

    goto :goto_0
.end method

.method private handleAttemptLockout(J)V
    .locals 9

    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->imgbtn:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->isSupportPatternBackupPin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->imgbtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    sget-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;->LockedOut:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;

    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    new-instance v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$4;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$4;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;JJ)V

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$4;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private isRTL()Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private postClearPatternRunnable()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setDeadline(J)V
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "pref_attempt_deadline"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->-getcom-samsung-android-personalpage-service-activity-PersonalPageModePattern$StageSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mHeaderText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mInfoTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mInfoTextView:Landroid/widget/TextView;

    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mHeaderWrongText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mInfoTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mHeaderWrongText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mInfoTextView:Landroid/widget/TextView;

    const v1, 0x7f060013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/16 v3, 0x8

    invoke-super {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->isTablet:Z

    const v1, 0x7f070008

    invoke-super {p0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->setTheme(I)V

    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->setContentView(I)V

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->isTablet:Z

    const v1, 0x7f080005

    invoke-virtual {p0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->imgbtn:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->isBackupKey:Z

    if-nez v1, :cond_0

    const v1, 0x7f080006

    invoke-virtual {p0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->subtextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->subtextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->imgbtn:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->imgbtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$3;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->imgbtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mIsVerificationMode:Z

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->InitPatternview(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->imgbtn:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->imgbtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->getDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->handleAttemptLockout(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mNumWrongConfirmAttempts:I

    sget-object v2, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;->NeedToUnlock:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;

    invoke-direct {p0, v2}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$Stage;)V

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
