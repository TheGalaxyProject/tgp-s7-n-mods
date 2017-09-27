.class public Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;
.super Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;
.source "PersonalPageModePin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$1;,
        Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;
    }
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-personalpage-service-activity-PersonalPageModePin$StageSwitchesValues:[I = null

.field public static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field private static final PIN_INPUT_TEXT:Ljava/lang/String; = "pin_input_text"

.field public static final TAG:Ljava/lang/String; = "PersonalPageModePin"

.field private static final blockInputFilter:[Landroid/text/InputFilter;

.field private static final normalInputFilter:[Landroid/text/InputFilter;


# instance fields
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
.method static synthetic -get0(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mPasswordText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2()[Landroid/text/InputFilter;
    .locals 1

    sget-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->normalInputFilter:[Landroid/text/InputFilter;

    return-object v0
.end method

.method private static synthetic -getcom-samsung-android-personalpage-service-activity-PersonalPageModePin$StageSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->-com-samsung-android-personalpage-service-activity-PersonalPageModePin$StageSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->-com-samsung-android-personalpage-service-activity-PersonalPageModePin$StageSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;->values()[Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;->LockedOut:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;

    invoke-virtual {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;->NeedToUnlock:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;

    invoke-virtual {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;->NeedToUnlockWrong:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;

    invoke-virtual {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->-com-samsung-android-personalpage-service-activity-PersonalPageModePin$StageSwitchesValues:[I

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

.method static synthetic -wrap0(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;)V
    .locals 0
    .param p1, "stage"    # Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 65
    new-array v0, v3, [Landroid/text/InputFilter;

    .line 66
    new-instance v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$1;

    invoke-direct {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$1;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 65
    sput-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->blockInputFilter:[Landroid/text/InputFilter;

    .line 75
    new-array v0, v3, [Landroid/text/InputFilter;

    sput-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->normalInputFilter:[Landroid/text/InputFilter;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;-><init>()V

    .line 61
    const-string/jumbo v0, "pref_attempt_deadline_pin"

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->PREF_ATTEMPT_DEADLINE:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private getDeadline()J
    .locals 8

    .prologue
    .line 286
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 288
    .local v2, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "pref_attempt_deadline_pin"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 290
    .local v0, "deadline":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 291
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->getFailedAttemptTimeOutMS()J

    move-result-wide v6

    .line 290
    add-long/2addr v4, v6

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 292
    const-string/jumbo v3, "PersonalPageModePin"

    const-string/jumbo v4, "Wrong PIN deadline is detected."

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mNumWrongConfirmAttempts:I

    if-nez v3, :cond_1

    .line 295
    const-string/jumbo v3, "PersonalPageModePin"

    const-string/jumbo v4, "Deadline PIN initialize"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-wide/16 v0, 0x0

    .line 302
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->setDeadline(J)V

    .line 305
    :cond_0
    return-wide v0

    .line 298
    :cond_1
    const-string/jumbo v3, "PersonalPageModePin"

    const-string/jumbo v4, "Assign new PIN deadline"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 300
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->getFailedAttemptTimeOutMS()J

    move-result-wide v6

    .line 299
    add-long v0, v4, v6

    goto :goto_0
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 231
    sget-object v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;->LockedOut:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;

    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;)V

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 234
    .local v6, "elapsedRealtime":J
    new-instance v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$3;

    sub-long v2, p1, v6

    .line 236
    const-wide/16 v4, 0x3e8

    move-object v1, p0

    .line 234
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$3;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;JJ)V

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 229
    return-void
.end method

.method private setDeadline(J)V
    .locals 3
    .param p1, "deadline"    # J

    .prologue
    .line 309
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 311
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "pref_attempt_deadline_pin"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 308
    return-void
.end method

.method private updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;)V
    .locals 2
    .param p1, "stage"    # Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;

    .prologue
    .line 260
    invoke-static {}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->-getcom-samsung-android-personalpage-service-activity-PersonalPageModePin$StageSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 259
    :goto_0
    return-void

    .line 262
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mHeaderText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mPasswordText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mPasswordText:Landroid/widget/TextView;

    const v1, 0x7f060016

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 270
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mHeaderWrongText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mPasswordText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mHeaderWrongText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mPasswordText:Landroid/widget/TextView;

    const v1, 0x7f060014

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 279
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    sget-object v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->blockInputFilter:[Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    const-string/jumbo v0, "PersonalPageModePin"

    const-string/jumbo v1, "==onCreate=="

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-super {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    iput-object p0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mContext:Landroid/content/Context;

    .line 91
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->setContentView(I)V

    .line 93
    iget-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->isBackupKey:Z

    if-nez v0, :cond_0

    .line 94
    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mSubtextView:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mSubtextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    :cond_0
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mPasswordText:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mPasswordText:Landroid/widget/TextView;

    const v1, 0x7f060016

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 107
    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    .line 109
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 86
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 133
    const-string/jumbo v0, "PersonalPageModePin"

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

    .line 134
    iput-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 135
    iput-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mContext:Landroid/content/Context;

    .line 136
    invoke-super {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onDestroy()V

    .line 132
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    const-string/jumbo v1, "pin_input_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 121
    invoke-super {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 118
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 199
    invoke-super {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onResume()V

    .line 200
    const-string/jumbo v2, "PersonalPageModePin"

    const-string/jumbo v3, "onResume"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->getDeadline()J

    move-result-wide v0

    .line 204
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 205
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->handleAttemptLockout(J)V

    .line 208
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 209
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    new-instance v3, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$2;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 198
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    const-string/jumbo v0, "pin_input_text"

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 127
    const-string/jumbo v0, "PersonalPageModePin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSaveInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-super {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 125
    return-void
.end method

.method protected verifyPinAndMountSecretBox()V
    .locals 8

    .prologue
    .line 140
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mEtPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "entry":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 142
    return-void

    .line 143
    :cond_0
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 145
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;->PIN:Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->checkPrivateModePassword(Ljava/lang/String;Ljava/util/List;Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 146
    const-string/jumbo v3, "PersonalPageModePin"

    const-string/jumbo v4, "Verify PIN success"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-boolean v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->isBackupKey:Z

    if-eqz v3, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->sendBroadcastForPrivateFinger()V

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->requestPrivateModeOn()V

    .line 139
    :goto_0
    return-void

    .line 152
    :cond_2
    const-string/jumbo v3, "PersonalPageModePin"

    const-string/jumbo v4, "Verify PIN fail"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mNumWrongConfirmAttempts:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->mNumWrongConfirmAttempts:I

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->getFailedAttemptTimeOutMS()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->getFailedAttemptTimeOutMS()J

    move-result-wide v6

    .line 156
    add-long v0, v4, v6

    .line 158
    .local v0, "deadline":J
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->setDeadline(J)V

    .line 159
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->handleAttemptLockout(J)V

    goto :goto_0

    .line 161
    .end local v0    # "deadline":J
    :cond_3
    sget-object v3, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;->NeedToUnlockWrong:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;

    invoke-direct {p0, v3}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->updateStage(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$Stage;)V

    goto :goto_0
.end method
