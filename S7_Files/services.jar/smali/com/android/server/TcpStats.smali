.class public Lcom/android/server/TcpStats;
.super Ljava/lang/Object;
.source "TcpStats.java"


# static fields
.field public static final CONNECTED:I = 0x1

.field public static final CONNECTION_LOST:I = 0x3

.field public static final CONNECT_FAIL:I = 0x2

.field public static final SEND_FIN_PACKET:I = 0x4


# instance fields
.field private mAddr:Ljava/lang/String;

.field private mErrno:I

.field private mIsScreenOn:Ljava/lang/Boolean;

.field private mMark:I

.field private mPid:I

.field private mProcName:Ljava/lang/String;

.field private mSid:I

.field private mState:I


# direct methods
.method public constructor <init>(ILjava/lang/String;IILjava/lang/Boolean;)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "procName"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "sid"    # I
    .param p5, "isScreenOn"    # Ljava/lang/Boolean;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/android/server/TcpStats;->mPid:I

    .line 47
    iput-object p2, p0, Lcom/android/server/TcpStats;->mProcName:Ljava/lang/String;

    .line 48
    iput p4, p0, Lcom/android/server/TcpStats;->mSid:I

    .line 49
    iput p3, p0, Lcom/android/server/TcpStats;->mState:I

    .line 50
    iput-object p5, p0, Lcom/android/server/TcpStats;->mIsScreenOn:Ljava/lang/Boolean;

    .line 45
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IILjava/lang/String;IILjava/lang/Boolean;)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "procName"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "sid"    # I
    .param p5, "addr"    # Ljava/lang/String;
    .param p6, "mark"    # I
    .param p7, "errno"    # I
    .param p8, "isScreenOn"    # Ljava/lang/Boolean;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/android/server/TcpStats;->mPid:I

    .line 36
    iput-object p2, p0, Lcom/android/server/TcpStats;->mProcName:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/android/server/TcpStats;->mAddr:Ljava/lang/String;

    .line 38
    iput p4, p0, Lcom/android/server/TcpStats;->mSid:I

    .line 39
    iput p3, p0, Lcom/android/server/TcpStats;->mState:I

    .line 40
    iput p7, p0, Lcom/android/server/TcpStats;->mErrno:I

    .line 41
    iput p6, p0, Lcom/android/server/TcpStats;->mMark:I

    .line 42
    iput-object p8, p0, Lcom/android/server/TcpStats;->mIsScreenOn:Ljava/lang/Boolean;

    .line 34
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "procName"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "sid"    # I
    .param p5, "addr"    # Ljava/lang/String;
    .param p6, "isScreenOn"    # Ljava/lang/Boolean;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/android/server/TcpStats;->mPid:I

    .line 27
    iput-object p2, p0, Lcom/android/server/TcpStats;->mProcName:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/android/server/TcpStats;->mAddr:Ljava/lang/String;

    .line 29
    iput p4, p0, Lcom/android/server/TcpStats;->mSid:I

    .line 30
    iput p3, p0, Lcom/android/server/TcpStats;->mState:I

    .line 31
    iput-object p6, p0, Lcom/android/server/TcpStats;->mIsScreenOn:Ljava/lang/Boolean;

    .line 25
    return-void
.end method


# virtual methods
.method public getProcName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/TcpStats;->mProcName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/android/server/TcpStats;->mState:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/TcpStats;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 55
    iget-object v0, p0, Lcom/android/server/TcpStats;->mProcName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/TcpStats;->mProcName:Ljava/lang/String;

    .line 54
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 55
    const-string/jumbo v1, "\t"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    iget-object v0, p0, Lcom/android/server/TcpStats;->mAddr:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/TcpStats;->mAddr:Ljava/lang/String;

    .line 54
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    const-string/jumbo v1, "\t"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
    iget v1, p0, Lcom/android/server/TcpStats;->mSid:I

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
    const-string/jumbo v1, "\t"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 58
    iget v1, p0, Lcom/android/server/TcpStats;->mState:I

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 58
    const-string/jumbo v1, "\t"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 59
    iget v1, p0, Lcom/android/server/TcpStats;->mErrno:I

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 59
    const-string/jumbo v1, "\t"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    iget v1, p0, Lcom/android/server/TcpStats;->mMark:I

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    const-string/jumbo v1, "\t"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/android/server/TcpStats;->mIsScreenOn:Ljava/lang/Boolean;

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 55
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 56
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method
