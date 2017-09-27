.class public Lcom/android/settings/fingerprint/FingerprintSetupWizard;
.super Landroid/app/Activity;
.source "FingerprintSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintSetupWizard$AnimationTimerTask;
    }
.end annotation


# static fields
.field private static final isEnableSurveyMode:Z


# instance fields
.field private animationRunnable:Ljava/lang/Runnable;

.field private fingerprintEffect:Landroid/graphics/drawable/AnimationDrawable;

.field private fingerprintEffectContainer:Landroid/view/ViewGroup;

.field private fingerprintImage:Landroid/view/View;

.field private handler:Landroid/os/Handler;

.field private headerImage:Landroid/view/View;

.field private laterBtn:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private registerBtn:Landroid/view/View;

.field private startRunnable:Ljava/lang/Runnable;

.field private timer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;

.field private titleArea:Landroid/view/View;

.field private titleText:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintEffect:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintEffectContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintImage:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->startRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)Ljava/util/TimerTask;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->timerTask:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->titleArea:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/fingerprint/FingerprintSetupWizard;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->startRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/fingerprint/FingerprintSetupWizard;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/settings/fingerprint/FingerprintSetupWizard;Ljava/util/TimerTask;)Ljava/util/TimerTask;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->timerTask:Ljava/util/TimerTask;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->disappearFingerprintImage()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->startAnimation()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 81
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 80
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->isEnableSurveyMode:Z

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->handler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method private disappearFingerprintImage()V
    .locals 6

    .prologue
    .line 335
    const-string/jumbo v0, "FpstFingerprintSetupWizard"

    const-string/jumbo v1, "disappearFingerprintImage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintEffectContainer:Landroid/view/ViewGroup;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/settings/fingerprint/VI/AnimationHelper;->alphaEnd(Landroid/view/View;JJ)V

    .line 337
    const/4 v0, 0x1

    const/16 v1, 0x5dc

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->startFingerprintVIEffect(ZI)V

    .line 334
    return-void
.end method

.method private insertSurveyLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p1, "app_ID"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    .line 371
    const-string/jumbo v2, "FpstFingerprintSetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertSurveyLog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->isEnableSurveyMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    sget-boolean v2, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->isEnableSurveyMode:Z

    if-eqz v2, :cond_0

    .line 374
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 375
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string/jumbo v2, "value"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 380
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 381
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 383
    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 385
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 369
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private resetAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 263
    const-string/jumbo v1, "FpstFingerprintSetupWizard"

    const-string/jumbo v2, "resetAnimation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->titleText:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 266
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->headerImage:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 267
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->laterBtn:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 268
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->registerBtn:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 269
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintEffectContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 271
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->titleArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 273
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/android/settings/fingerprint/FingerprintSetupWizard$2;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard$2;-><init>(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 261
    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 4

    .prologue
    .line 254
    const/16 v0, 0x400

    .line 255
    .local v0, "visibility":I
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 258
    .local v1, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x7ffff400

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 253
    return-void
.end method

.method private showSensorErrorDialog()V
    .locals 5

    .prologue
    .line 216
    const v1, 0x7f0b067c

    .line 218
    .local v1, "stringID":I
    const-string/jumbo v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    const v1, 0x7f0b067d

    .line 222
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    const v3, 0x7f0b067a

    .line 222
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 226
    new-instance v3, Lcom/android/settings/fingerprint/FingerprintSetupWizard$1;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard$1;-><init>(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)V

    .line 225
    const v4, 0x104000a

    .line 222
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 232
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 215
    return-void
.end method

.method private startAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x294

    const-wide/16 v2, 0x14a

    .line 292
    const-string/jumbo v0, "FpstFingerprintSetupWizard"

    const-string/jumbo v1, "startAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->titleText:Landroid/view/View;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/settings/fingerprint/VI/AnimationHelper;->fromRight(Landroid/view/View;JJ)V

    .line 295
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->laterBtn:Landroid/view/View;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/settings/fingerprint/VI/AnimationHelper;->fromRight(Landroid/view/View;JJ)V

    .line 296
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->registerBtn:Landroid/view/View;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/settings/fingerprint/VI/AnimationHelper;->fromRight(Landroid/view/View;JJ)V

    .line 298
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->headerImage:Landroid/view/View;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/settings/fingerprint/VI/AnimationHelper;->alphaStart(Landroid/view/View;JJ)V

    .line 299
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->headerImage:Landroid/view/View;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/settings/fingerprint/VI/AnimationHelper;->fromBottom(Landroid/view/View;JJ)V

    .line 300
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintEffectContainer:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/settings/fingerprint/VI/AnimationHelper;->fromBottom(Landroid/view/View;JJ)V

    .line 302
    const/4 v0, 0x0

    const/16 v1, 0x233

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->startFingerprintVIEffect(ZI)V

    .line 290
    return-void
.end method

.method private startFingerprintLockSettings()V
    .locals 4

    .prologue
    .line 355
    const-string/jumbo v2, "FpstFingerprintSetupWizard"

    const-string/jumbo v3, "startFingerprintLockSettings()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 358
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const-string/jumbo v2, "previousStage"

    const-string/jumbo v3, "sec_setupwizard_fingerprint"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const/16 v2, 0x7d0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "FpstFingerprintSetupWizard"

    const-string/jumbo v3, "Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startFingerprintVIEffect(ZI)V
    .locals 6
    .param p1, "alpha"    # Z
    .param p2, "delay"    # I

    .prologue
    .line 306
    move v0, p1

    .line 308
    .local v0, "isAlpha":Z
    new-instance v1, Lcom/android/settings/fingerprint/FingerprintSetupWizard$3;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/fingerprint/FingerprintSetupWizard$3;-><init>(Lcom/android/settings/fingerprint/FingerprintSetupWizard;Z)V

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->animationRunnable:Ljava/lang/Runnable;

    .line 331
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->animationRunnable:Ljava/lang/Runnable;

    int-to-long v4, p2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 305
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 238
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 239
    const-string/jumbo v0, "FpstFingerprintSetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string/jumbo v0, "FpstFingerprintSetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    packed-switch p1, :pswitch_data_0

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 244
    :pswitch_0
    if-ne p2, v3, :cond_0

    .line 245
    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->setResult(I)V

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->finish()V

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->setResult(I)V

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->finish()V

    .line 210
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 169
    :goto_0
    :pswitch_0
    return-void

    .line 176
    :pswitch_1
    const-string/jumbo v0, "FpstFingerprintSetupWizard"

    const-string/jumbo v1, "skip fingerrpint setup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string/jumbo v1, "com.samsung.android.fingerprint.service"

    const-string/jumbo v2, "FPSW"

    const-string/jumbo v3, "Later"

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 179
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->setResult(I)V

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->finish()V

    goto :goto_0

    .line 183
    :pswitch_2
    const-string/jumbo v0, "FpstFingerprintSetupWizard"

    const-string/jumbo v1, "Register fingerrpint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 186
    .local v6, "conf":Landroid/content/res/Configuration;
    iget v0, v6, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v0, v2, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mContext:Landroid/content/Context;

    new-array v1, v2, [Ljava/lang/Object;

    const v2, 0x7f0b0675

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0b0709

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v7

    .line 191
    .local v7, "isHWdetected":Z
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->requestGetSensorStatus()I

    move-result v8

    .line 193
    .local v8, "status":I
    if-eqz v7, :cond_1

    const v0, 0x186c8

    if-eq v8, v0, :cond_2

    const v0, 0x186c9

    if-eq v8, v0, :cond_2

    .line 194
    :cond_1
    const-string/jumbo v0, "FpstFingerprintSetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate isHardwareDetected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", requestGetSensorStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->showSensorErrorDialog()V

    .line 196
    return-void

    .line 198
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->startFingerprintLockSettings()V

    goto/16 :goto_0

    .line 201
    .end local v7    # "isHWdetected":Z
    .end local v8    # "status":I
    :cond_3
    const-string/jumbo v0, "FpstFingerprintSetupWizard"

    const-string/jumbo v1, "mFingerprintManager doesn\'t create"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->showSensorErrorDialog()V

    goto/16 :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x7f1103a2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f0b0228

    const v6, 0x7f020507

    const/4 v5, 0x0

    .line 86
    const-string/jumbo v2, "FpstFingerprintSetupWizard"

    const-string/jumbo v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->hide()V

    .line 94
    :cond_0
    iput-object p0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mContext:Landroid/content/Context;

    .line 96
    const v2, 0x7f04010c

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->setContentView(I)V

    .line 98
    const-string/jumbo v2, "fingerprint"

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 100
    const v2, 0x7f11039f

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintImage:Landroid/view/View;

    .line 102
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    const v2, 0x7f11039d

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->headerImage:Landroid/view/View;

    .line 104
    const v2, 0x7f11039e

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintEffectContainer:Landroid/view/ViewGroup;

    .line 105
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintEffect:Landroid/graphics/drawable/AnimationDrawable;

    .line 108
    :cond_1
    const v2, 0x7f1103a0

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->titleText:Landroid/view/View;

    .line 109
    const v2, 0x7f1103a2

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->laterBtn:Landroid/view/View;

    .line 110
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->laterBtn:Landroid/view/View;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b06c5

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 111
    const v2, 0x7f1103a4

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->registerBtn:Landroid/view/View;

    .line 112
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->registerBtn:Landroid/view/View;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b0429

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 113
    const v2, 0x7f1100e5

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->titleArea:Landroid/view/View;

    .line 115
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "show_button_background"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->laterBtn:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->registerBtn:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    :cond_2
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->laterBtn:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->registerBtn:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v2, 0x7f1103a6

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 125
    .local v1, "register_arrow":Landroid/widget/ImageView;
    const v2, 0x7f020406

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    new-instance v0, Landroid/graphics/LightingColorFilter;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 127
    const v3, 0x7f0d014f

    .line 126
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/high16 v3, -0x1000000

    invoke-direct {v0, v3, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 128
    .local v0, "colorfilter":Landroid/graphics/ColorFilter;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 130
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->setIndicatorTransparency()V

    .line 132
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_3

    .line 133
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->resetAnimation()V

    .line 84
    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 146
    const-string/jumbo v1, "FpstFingerprintSetupWizard"

    const-string/jumbo v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintEffect:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintEffect:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->timerTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_2

    .line 157
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->startRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 161
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->animationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "FpstFingerprintSetupWizard"

    const-string/jumbo v2, "Exception occured!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 140
    const-string/jumbo v0, "FpstFingerprintSetupWizard"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method
