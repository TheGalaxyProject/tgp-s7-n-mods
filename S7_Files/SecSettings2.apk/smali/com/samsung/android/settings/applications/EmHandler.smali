.class public Lcom/samsung/android/settings/applications/EmHandler;
.super Ljava/lang/Object;
.source "EmHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;,
        Lcom/samsung/android/settings/applications/EmHandler$MainHandler;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mActionObject:Ljava/lang/Object;

.field private mActionType:I

.field private mCallback:Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;

.field private mIsFinished:Z

.field final mMainHandler:Lcom/samsung/android/settings/applications/EmHandler$MainHandler;

.field private mReqRetryCount:I

.field private mReqTimeOut:I

.field private mResult:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

.field private mResultNLG:[Ljava/lang/String;

.field private mScreenNLG:[Ljava/lang/String;

.field private mStateId:Ljava/lang/String;

.field private mStateIdNLG:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/applications/EmHandler;)Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mCallback:Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;)V
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mActionType:I

    .line 53
    iput-object v3, p0, Lcom/samsung/android/settings/applications/EmHandler;->mActionObject:Ljava/lang/Object;

    .line 54
    iput-object v3, p0, Lcom/samsung/android/settings/applications/EmHandler;->mStateId:Ljava/lang/String;

    .line 55
    iput v2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mReqTimeOut:I

    .line 56
    iput v2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mReqRetryCount:I

    .line 57
    iput-boolean v2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mIsFinished:Z

    .line 59
    iput-object v3, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResult:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 60
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mStateIdNLG:Ljava/lang/String;

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    aput-object v1, v0, v4

    const-string/jumbo v1, ""

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mScreenNLG:[Ljava/lang/String;

    .line 62
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResultNLG:[Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;

    invoke-direct {v0, p0, v3}, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;-><init>(Lcom/samsung/android/settings/applications/EmHandler;Lcom/samsung/android/settings/applications/EmHandler$MainHandler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mMainHandler:Lcom/samsung/android/settings/applications/EmHandler$MainHandler;

    .line 77
    iput-object p1, p0, Lcom/samsung/android/settings/applications/EmHandler;->mCallback:Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;

    .line 76
    return-void
.end method


# virtual methods
.method public exeOptBasicAction(Landroid/content/Context;Landroid/view/Menu;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "optionMenu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x0

    .line 244
    const/4 v2, 0x0

    .line 245
    .local v2, "optionRes":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/EmHandler;->getActionObj()Ljava/lang/Object;

    move-result-object v1

    .line 246
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 247
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 253
    if-eqz p2, :cond_0

    if-nez v2, :cond_2

    .line 254
    :cond_0
    sget-object v3, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exeOptBasicAction) optionMenu="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", optionRes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return v6

    .line 249
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_1
    sget-object v3, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "exeOptBasicAction() obj is not integer."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return v6

    .line 258
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_2
    check-cast p1, Lcom/android/settings/SettingsActivity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f11049f

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 259
    .local v0, "currentFrag":Landroid/app/Fragment;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 264
    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 265
    const/4 v3, 0x1

    return v3

    .line 260
    :cond_3
    sget-object v3, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "exeOptBasicAction) currentFrag is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return v6
.end method

.method public exePrefBasicAction(Landroid/preference/PreferenceScreen;)Z
    .locals 6
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v5, 0x0

    .line 269
    const/4 v1, 0x0

    .line 270
    .local v1, "pref":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/EmHandler;->getActionObj()Ljava/lang/Object;

    move-result-object v0

    .line 271
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/preference/Preference;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 272
    check-cast v1, Landroid/preference/Preference;

    .line 278
    .local v1, "pref":Landroid/preference/Preference;
    if-eqz p1, :cond_0

    if-nez v1, :cond_2

    .line 279
    :cond_0
    sget-object v2, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "exePrefBasicAction) prefScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", pref="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return v5

    .line 274
    .local v1, "pref":Landroid/preference/Preference;
    :cond_1
    sget-object v2, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "exePrefBasicAction) obj is not preference."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return v5

    .line 283
    .local v1, "pref":Landroid/preference/Preference;
    :cond_2
    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 284
    sget-object v2, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "exePrefBasicAction) pref is disabled."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return v5

    .line 288
    :cond_3
    sget-object v2, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "exePrefBasicAction) pref.performClick"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {v1, p1}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 290
    const/4 v2, 0x1

    return v2
.end method

.method public exeViewBasicAction()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 294
    const/4 v1, 0x0

    .line 295
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/EmHandler;->getActionObj()Ljava/lang/Object;

    move-result-object v0

    .line 296
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 297
    check-cast v1, Landroid/view/View;

    .line 303
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_1

    .line 304
    sget-object v2, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "exeViewBasicAction) View="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return v5

    .line 299
    .local v1, "view":Landroid/view/View;
    :cond_0
    sget-object v2, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "exeViewBasicAction) obj is not preference."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return v5

    .line 308
    .local v1, "view":Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 309
    sget-object v2, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "exeViewBasicAction) View is disabled."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return v5

    .line 313
    :cond_2
    sget-object v2, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "exeViewBasicAction) view.performClick"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 315
    const/4 v2, 0x1

    return v2
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mIsFinished:Z

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mReqRetryCount:I

    .line 205
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mMainHandler:Lcom/samsung/android/settings/applications/EmHandler$MainHandler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;->sendEmptyMessage(I)Z

    .line 202
    return-void
.end method

.method public getActionObj()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mActionObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getStateId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mStateId:Ljava/lang/String;

    return-object v0
.end method

.method public retryAction()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x1

    const-wide/16 v4, 0xc8

    .line 120
    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "retryAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mActionType:I

    if-ne v0, v3, :cond_0

    .line 122
    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Action type is not set."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mReqRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mReqRetryCount:I

    .line 127
    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mReqRetryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mReqRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Max ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mReqTimeOut:I

    div-int/lit16 v2, v2, 0xc8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-boolean v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mIsFinished:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mReqRetryCount:I

    iget v1, p0, Lcom/samsung/android/settings/applications/EmHandler;->mReqTimeOut:I

    div-int/lit16 v1, v1, 0xc8

    if-gt v0, v1, :cond_1

    .line 129
    iget v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mActionType:I

    packed-switch v0, :pswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mMainHandler:Lcom/samsung/android/settings/applications/EmHandler$MainHandler;

    invoke-virtual {v0, v6, v4, v5}, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mMainHandler:Lcom/samsung/android/settings/applications/EmHandler$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4, v5}, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 137
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mMainHandler:Lcom/samsung/android/settings/applications/EmHandler$MainHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4, v5}, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 140
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mMainHandler:Lcom/samsung/android/settings/applications/EmHandler$MainHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4, v5}, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 145
    :cond_1
    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Time out to retry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iput-boolean v6, p0, Lcom/samsung/android/settings/applications/EmHandler;->mIsFinished:Z

    .line 147
    sget-object v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    iput-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResult:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mMainHandler:Lcom/samsung/android/settings/applications/EmHandler$MainHandler;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public sendResult(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V
    .locals 6
    .param p1, "emManager"    # Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 178
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResult:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    if-nez v0, :cond_1

    .line 179
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "emManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResult:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResult:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    sget-object v1, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 184
    :cond_2
    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/samsung/android/settings/applications/EmHandler;->mScreenNLG:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/samsung/android/settings/applications/EmHandler;->mScreenNLG:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 187
    :cond_3
    :goto_0
    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResultNLG:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResultNLG:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 190
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mStateIdNLG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 194
    :cond_5
    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendResult["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mStateIdNLG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResult:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 195
    const-string/jumbo v2, ", mScreenNLG="

    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 195
    iget-object v2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mScreenNLG:[Ljava/lang/String;

    aget-object v2, v2, v3

    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 195
    const-string/jumbo v2, " / "

    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 195
    iget-object v2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mScreenNLG:[Ljava/lang/String;

    aget-object v2, v2, v4

    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 195
    const-string/jumbo v2, " / "

    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 195
    iget-object v2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mScreenNLG:[Ljava/lang/String;

    aget-object v2, v2, v5

    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 196
    const-string/jumbo v2, ", mResultNLG="

    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 196
    iget-object v2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResultNLG:[Ljava/lang/String;

    aget-object v2, v2, v3

    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 196
    const-string/jumbo v2, " / "

    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 196
    iget-object v2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResultNLG:[Ljava/lang/String;

    aget-object v2, v2, v4

    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResult:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 177
    return-void

    .line 184
    :cond_6
    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/samsung/android/settings/applications/EmHandler;->mScreenNLG:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mScreenNLG:[Ljava/lang/String;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/applications/EmHandler;->mScreenNLG:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mScreenNLG:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResultNLG:[Ljava/lang/String;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResultNLG:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public setAction(ILjava/lang/Object;I)V
    .locals 0
    .param p1, "actionType"    # I
    .param p2, "ActionObj"    # Ljava/lang/Object;
    .param p3, "timeOut"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/samsung/android/settings/applications/EmHandler;->mActionType:I

    .line 90
    iput-object p2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mActionObject:Ljava/lang/Object;

    .line 91
    iput p3, p0, Lcom/samsung/android/settings/applications/EmHandler;->mReqTimeOut:I

    .line 88
    return-void
.end method

.method public setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;
    .param p2, "stateIdNLG"    # Ljava/lang/String;

    .prologue
    .line 157
    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;
    .param p2, "stateIdNLG"    # Ljava/lang/String;
    .param p3, "screenName"    # Ljava/lang/String;
    .param p4, "screenAttr"    # Ljava/lang/String;
    .param p5, "screenAttrVal"    # Ljava/lang/String;

    .prologue
    .line 162
    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;
    .param p2, "stateIdNLG"    # Ljava/lang/String;
    .param p3, "screenName"    # Ljava/lang/String;
    .param p4, "screenAttr"    # Ljava/lang/String;
    .param p5, "screenAttrVal"    # Ljava/lang/String;
    .param p6, "resultName"    # Ljava/lang/String;
    .param p7, "resultVal"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 168
    iput-object p1, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResult:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 169
    iput-object p2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mStateIdNLG:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mScreenNLG:[Ljava/lang/String;

    aput-object p3, v0, v2

    .line 171
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mScreenNLG:[Ljava/lang/String;

    aput-object p4, v0, v3

    .line 172
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mScreenNLG:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p5, v0, v1

    .line 173
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResultNLG:[Ljava/lang/String;

    aput-object p6, v0, v2

    .line 174
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResultNLG:[Ljava/lang/String;

    aput-object p7, v0, v3

    .line 167
    return-void
.end method

.method public setStateId(Ljava/lang/String;)V
    .locals 1
    .param p1, "stateId"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/samsung/android/settings/applications/EmHandler;->mStateId:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mCallback:Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;->setActionType(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public startAction()V
    .locals 2

    .prologue
    .line 99
    iget v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mActionType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 100
    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Action type is not set."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mActionType:I

    packed-switch v0, :pswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 105
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mMainHandler:Lcom/samsung/android/settings/applications/EmHandler$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 108
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mMainHandler:Lcom/samsung/android/settings/applications/EmHandler$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 111
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mMainHandler:Lcom/samsung/android/settings/applications/EmHandler$MainHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 114
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mMainHandler:Lcom/samsung/android/settings/applications/EmHandler$MainHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
