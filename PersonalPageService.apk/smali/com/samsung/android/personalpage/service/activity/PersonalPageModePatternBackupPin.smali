.class public Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;
.super Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;
.source "PersonalPageModePatternBackupPin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$1;,
        Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;
    }
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-personalpage-service-activity-PersonalPageModePatternBackupPin$StageSwitchesValues:[I = null

.field public static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field public static final TAG:Ljava/lang/String; = "PersonalPageModePatternBackupPin"

.field private static final blockInputFilter:[Landroid/text/InputFilter;

.field private static final normalInputFilter:[Landroid/text/InputFilter;


# instance fields
.field private final BACKPIN_INPUT_TEXT:Ljava/lang/String;

.field private final PREF_ATTEMPT_DEADLINE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mEtPassword:Landroid/widget/EditText;

.field private mHeaderText:Ljava/lang/CharSequence;

.field private mHeaderWrongText:Ljava/lang/CharSequence;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordText:Landroid/widget/TextView;

.field private mSubtextView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mPasswordText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2()[Landroid/text/InputFilter;
    .locals 1

    sget-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->normalInputFilter:[Landroid/text/InputFilter;

    return-object v0
.end method

.method private static synthetic -getcom-samsung-android-personalpage-service-activity-PersonalPageModePatternBackupPin$StageSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->-com-samsung-android-personalpage-service-activity-PersonalPageModePatternBackupPin$StageSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->-com-samsung-android-personalpage-service-activity-PersonalPageModePatternBackupPin$StageSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;->values()[Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;->LockedOut:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;

    invoke-virtual {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;->NeedToUnlock:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;

    invoke-virtual {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;->NeedToUnlockWrong:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;

    invoke-virtual {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->-com-samsung-android-personalpage-service-activity-PersonalPageModePatternBackupPin$StageSwitchesValues:[I

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

.method static synthetic -wrap0(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    new-array v0, v3, [Landroid/text/InputFilter;

    new-instance v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$1;

    invoke-direct {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$1;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->blockInputFilter:[Landroid/text/InputFilter;

    new-array v0, v3, [Landroid/text/InputFilter;

    sput-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->normalInputFilter:[Landroid/text/InputFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;-><init>()V

    const-string/jumbo v0, "backpin_input_text"

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->BACKPIN_INPUT_TEXT:Ljava/lang/String;

    const-string/jumbo v0, "pref_attempt_deadline"

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->PREF_ATTEMPT_DEADLINE:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->getFailedAttemptTimeOutMS()J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    const-string/jumbo v3, "PersonalPageModePatternBackupPin"

    const-string/jumbo v4, "Wrong PIN deadline is detected."

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mNumWrongConfirmAttempts:I

    if-nez v3, :cond_1

    const-string/jumbo v3, "PersonalPageModePatternBackupPin"

    const-string/jumbo v4, "Deadline PIN initialize"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->setDeadline(J)V

    :cond_0
    return-wide v0

    :cond_1
    const-string/jumbo v3, "PersonalPageModePatternBackupPin"

    const-string/jumbo v4, "Assign new PIN deadline"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->getFailedAttemptTimeOutMS()J

    move-result-wide v6

    add-long v0, v4, v6

    goto :goto_0
.end method

.method private handleAttemptLockout(J)V
    .locals 9

    sget-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;->LockedOut:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;

    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    new-instance v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$3;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$3;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;JJ)V

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mCountdownTimer:Landroid/os/CountDownTimer;

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

.method private updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->-getcom-samsung-android-personalpage-service-activity-PersonalPageModePatternBackupPin$StageSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mHeaderText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mPasswordText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mPasswordText:Landroid/widget/TextView;

    const v1, 0x7f060016

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mHeaderWrongText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mPasswordText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mHeaderWrongText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mPasswordText:Landroid/widget/TextView;

    const v1, 0x7f060014

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    sget-object v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->blockInputFilter:[Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mContext:Landroid/content/Context;

    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->setContentView(I)V

    iget-boolean v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->isBackupKey:Z

    if-nez v1, :cond_0

    const v1, 0x7f080006

    invoke-virtual {p0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mSubtextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mSubtextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const v1, 0x7f080009

    invoke-virtual {p0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mPasswordText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mPasswordText:Landroid/widget/TextView;

    const v2, 0x7f06000c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f08000a

    invoke-virtual {p0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "PersonalPageModePatternBackupPin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "destroy() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mContext:Landroid/content/Context;

    invoke-super {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onDestroy()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    const-string/jumbo v1, "backpin_input_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    invoke-super {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->getDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->handleAttemptLockout(J)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    new-instance v3, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$2;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "backpin_input_text"

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "PersonalPageModePatternBackupPin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSaveInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected verifyBackupPinAndMountSecretBox()V
    .locals 10

    const-wide/16 v8, 0x0

    iget-object v4, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v2, v7, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->checkPrivateModePassword(Ljava/lang/String;Ljava/util/List;Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "PersonalPageModePatternBackupPin"

    const-string/jumbo v5, "Verify Backup PIN success"

    invoke-static {v4, v5}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->isBackupKey:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->sendBroadcastForPrivateFinger()V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->requestPrivateModeOn()V

    iget-object v4, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "pref_attempt_deadline"

    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v4, "PersonalPageModePatternBackupPin"

    const-string/jumbo v5, "Verify Backup PIN fail"

    invoke-static {v4, v5}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mNumWrongConfirmAttempts:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mNumWrongConfirmAttempts:I

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->getFailedAttemptTimeOutMS()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->getFailedAttemptTimeOutMS()J

    move-result-wide v6

    add-long v0, v4, v6

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->setDeadline(J)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->handleAttemptLockout(J)V

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;->NeedToUnlockWrong:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;

    invoke-direct {p0, v4}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$Stage;)V

    goto :goto_0
.end method
