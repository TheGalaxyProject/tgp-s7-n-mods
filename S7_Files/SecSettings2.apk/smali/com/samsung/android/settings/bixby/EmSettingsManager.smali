.class public Lcom/samsung/android/settings/bixby/EmSettingsManager;
.super Ljava/lang/Object;
.source "EmSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bixby/EmSettingsManager$1;,
        Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;,
        Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;,
        Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;,
        Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;,
        Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;
    }
.end annotation


# static fields
.field public static final EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

.field public static final EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEm:Lcom/samsung/android/app/executor/ExecutorMediator;

.field private mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmParamFillingCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;

.field private mEmParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/executor/data/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private mEmRuleCanceledCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;

.field private mEmState:Lcom/samsung/android/app/executor/data/State;

.field private mEmStateId:Ljava/lang/String;

.field private mEmStateReqCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

.field private mInterimStateListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

.field private mNlgCallCount:I

.field mNlgrequestInfo:Lcom/samsung/android/app/executor/data/NlgRequestInfo;

.field private mPendingState:Z

.field private mResponseCallCount:I

.field mResultParamList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;",
            ">;"
        }
    .end annotation
.end field

.field mScreenParamList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenStates:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParamFillingCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmRuleCanceledCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmStateReqCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenStates:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParams:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/bixby/EmSettingsManager;Lcom/samsung/android/app/executor/data/State;)Lcom/samsung/android/app/executor/data/State;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmState:Lcom/samsung/android/app/executor/data/State;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmStateId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->resetResponseCallCount()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    sput-object v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 40
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    sput-object v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenStates:Ljava/util/HashSet;

    .line 58
    iput-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 60
    iput-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmStateReqCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

    .line 62
    iput-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParamFillingCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;

    .line 64
    iput-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmRuleCanceledCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;

    .line 67
    iput-boolean v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mPendingState:Z

    .line 69
    iput v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResponseCallCount:I

    .line 71
    iput v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mNlgCallCount:I

    .line 127
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;-><init>(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mInterimStateListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    .line 432
    iput-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    .line 434
    iput-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    .line 436
    iput-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mNlgrequestInfo:Lcom/samsung/android/app/executor/data/NlgRequestInfo;

    .line 75
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBixby()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/samsung/android/app/executor/ExecutorMediator;->getInstance()Lcom/samsung/android/app/executor/ExecutorMediator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/app/executor/ExecutorMediator;

    .line 73
    :cond_0
    return-void
.end method

.method private callRequestNlg(Ljava/lang/String;)V
    .locals 3
    .param p1, "nlgStateId"    # Ljava/lang/String;

    .prologue
    .line 506
    iget v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mNlgCallCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mNlgCallCount:I

    .line 507
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 508
    const-string/jumbo v0, "EmSettingsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestNlg() ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mNlgCallCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 509
    const-string/jumbo v2, " / "

    .line 508
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 509
    iget-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 508
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_0
    return-void
.end method

.method private callSendResponse()V
    .locals 3

    .prologue
    .line 496
    iget v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResponseCallCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResponseCallCount:I

    .line 497
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 498
    const-string/jumbo v0, "EmSettingsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendResponse() ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResponseCallCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 499
    const-string/jumbo v2, ") : "

    .line 498
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 499
    iget-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 498
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResponseCallCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 501
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "sendResponse duplicated call"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_1
    return-void
.end method

.method private clearEmCallbacks()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 117
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmStateReqCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

    .line 118
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParamFillingCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;

    .line 115
    return-void
.end method

.method private resetResponseCallCount()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 513
    iput v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResponseCallCount:I

    .line 514
    iput v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mNlgCallCount:I

    .line 512
    return-void
.end method

.method private setEmCallback(Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 99
    return-void
.end method

.method private setLogEnterState(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screenStateId"    # Ljava/lang/String;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/executor/ExecutorMediator;->logEnterState(Landroid/content/Context;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method private setLogEnterStates(Landroid/content/Context;Ljava/util/Set;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p2, "screenStateId":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/executor/ExecutorMediator;->logEnterStates(Landroid/content/Context;Ljava/util/Set;)V

    .line 284
    return-void
.end method

.method private setLogExitState(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screenStateId"    # Ljava/lang/String;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/executor/ExecutorMediator;->logExitState(Landroid/content/Context;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method private setLogExitStates(Landroid/content/Context;Ljava/util/Set;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p2, "screenStateId":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/executor/ExecutorMediator;->logExitStates(Landroid/content/Context;Ljava/util/Set;)V

    .line 294
    return-void
.end method


# virtual methods
.method public addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 450
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;-><init>(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    return-void
.end method

.method public addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "attrValue"    # Ljava/lang/String;

    .prologue
    .line 439
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;-><init>(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    return-void
.end method

.method public bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;
    .param p3, "screenStateId"    # Ljava/lang/Object;

    .prologue
    .line 169
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBixby()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    return-void

    .line 172
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    .line 173
    if-eqz p1, :cond_3

    .line 174
    if-eqz p2, :cond_1

    .line 175
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setEmCallback(Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;)V

    .line 176
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/app/executor/ExecutorMediator;

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mInterimStateListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/executor/ExecutorMediator;->setInterimStateListener(Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;)V

    .line 178
    :cond_1
    instance-of v0, p3, Ljava/util/HashSet;

    if-eqz v0, :cond_4

    move-object v0, p3

    .line 179
    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenStates:Ljava/util/HashSet;

    .line 180
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenStates:Ljava/util/HashSet;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setLogEnterStates(Landroid/content/Context;Ljava/util/Set;)V

    .line 186
    :cond_2
    :goto_0
    const-string/jumbo v0, "EmSettingsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bindEmService() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_3
    return-void

    .line 181
    :cond_4
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 182
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenStates:Ljava/util/HashSet;

    .line 183
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenStates:Ljava/util/HashSet;

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setLogEnterState(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearEmService(Ljava/lang/Object;)V
    .locals 3
    .param p1, "screenStateId"    # Ljava/lang/Object;

    .prologue
    .line 238
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBixby()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    return-void

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmCallbacks()V

    .line 242
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-virtual {v0}, Lcom/samsung/android/app/executor/ExecutorMediator;->clearInterimStateListener()V

    .line 244
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->resetResponseCallCount()V

    .line 246
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 247
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_3

    .line 248
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setLogExitStates(Landroid/content/Context;Ljava/util/Set;)V

    .line 252
    :cond_1
    :goto_0
    const-string/jumbo v0, "EmSettingsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clearEmService() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_2
    return-void

    .line 249
    :cond_3
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 250
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setLogExitState(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearNlgParams()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 456
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    .line 457
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    .line 455
    return-void
.end method

.method public getParamInt(I)I
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/executor/data/Parameter;

    invoke-virtual {v0}, Lcom/samsung/android/app/executor/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getParamString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 367
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/executor/data/Parameter;

    invoke-virtual {v0}, Lcom/samsung/android/app/executor/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParamsSize()I
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPendingState()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mPendingState:Z

    return v0
.end method

.method public getStateId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmStateId:Ljava/lang/String;

    return-object v0
.end method

.method public isLastState()Z
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmState:Lcom/samsung/android/app/executor/data/State;

    invoke-virtual {v0}, Lcom/samsung/android/app/executor/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public requestNlg(Ljava/lang/String;)V
    .locals 7
    .param p1, "nlgStateId"    # Ljava/lang/String;

    .prologue
    .line 461
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 462
    :cond_0
    return-void

    .line 464
    :cond_1
    new-instance v3, Lcom/samsung/android/app/executor/data/NlgRequestInfo;

    invoke-direct {v3, p1}, Lcom/samsung/android/app/executor/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    .line 467
    .local v3, "requestInfo":Lcom/samsung/android/app/executor/data/NlgRequestInfo;
    iget-object v4, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 468
    iget-object v4, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 469
    .local v1, "listSize":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 470
    iget-object v4, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;

    .line 471
    .local v2, "param":Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;
    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getAttrName()Ljava/lang/String;

    move-result-object v5

    .line 472
    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getAttrValue()Ljava/lang/String;

    move-result-object v6

    .line 471
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/app/executor/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/executor/data/NlgRequestInfo;

    .line 473
    const-string/jumbo v4, "EmSettingsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestNlg() ScreenParam("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 474
    const-string/jumbo v6, "/"

    .line 473
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 474
    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getAttrName()Ljava/lang/String;

    move-result-object v6

    .line 473
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 474
    const-string/jumbo v6, "/"

    .line 473
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 474
    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getAttrValue()Ljava/lang/String;

    move-result-object v6

    .line 473
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    .end local v0    # "index":I
    .end local v1    # "listSize":I
    .end local v2    # "param":Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 479
    iget-object v4, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 480
    .restart local v1    # "listSize":I
    const/4 v0, 0x0

    .restart local v0    # "index":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 481
    iget-object v4, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;

    .line 482
    .restart local v2    # "param":Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;
    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/executor/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/executor/data/NlgRequestInfo;

    .line 483
    const-string/jumbo v4, "EmSettingsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestNlg() ResultParam("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 484
    const-string/jumbo v6, "/"

    .line 483
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 484
    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 483
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 488
    .end local v0    # "index":I
    .end local v1    # "listSize":I
    .end local v2    # "param":Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-virtual {v4, v3}, Lcom/samsung/android/app/executor/ExecutorMediator;->requestNlg(Lcom/samsung/android/app/executor/data/NlgRequestInfo;)V

    .line 489
    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearNlgParams()V

    .line 490
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->callRequestNlg(Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method public sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V
    .locals 1
    .param p1, "result"    # Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/executor/ExecutorMediator;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 375
    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearNlgParams()V

    .line 376
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->callSendResponse()V

    .line 373
    return-void
.end method

.method public setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "attrValue"    # Ljava/lang/String;

    .prologue
    .line 446
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method public setPendingState(Z)V
    .locals 0
    .param p1, "isPending"    # Z

    .prologue
    .line 327
    iput-boolean p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mPendingState:Z

    .line 326
    return-void
.end method
