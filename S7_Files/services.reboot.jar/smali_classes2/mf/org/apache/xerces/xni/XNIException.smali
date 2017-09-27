.class public Lmf/org/apache/xerces/xni/XNIException;
.super Ljava/lang/RuntimeException;
.source "XNIException.java"


# static fields
.field static final serialVersionUID:J = 0x7d2cd64b50ff589fL


# instance fields
.field private fException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 45
    iput-object p0, p0, Lmf/org/apache/xerces/xni/XNIException;->fException:Ljava/lang/Exception;

    .line 67
    iput-object p1, p0, Lmf/org/apache/xerces/xni/XNIException;->fException:Ljava/lang/Exception;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 45
    iput-object p0, p0, Lmf/org/apache/xerces/xni/XNIException;->fException:Ljava/lang/Exception;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 45
    iput-object p0, p0, Lmf/org/apache/xerces/xni/XNIException;->fException:Ljava/lang/Exception;

    .line 78
    iput-object p2, p0, Lmf/org/apache/xerces/xni/XNIException;->fException:Ljava/lang/Exception;

    .line 79
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lmf/org/apache/xerces/xni/XNIException;->fException:Ljava/lang/Exception;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xni/XNIException;->fException:Ljava/lang/Exception;

    goto :goto_0
.end method

.method public declared-synchronized initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    .prologue
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/xni/XNIException;->fException:Ljava/lang/Exception;

    if-ne v0, p0, :cond_0

    .line 107
    if-eq p1, p0, :cond_1

    .line 111
    check-cast p1, Ljava/lang/Exception;

    iput-object p1, p0, Lmf/org/apache/xerces/xni/XNIException;->fException:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 112
    return-object p0

    .line 105
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 109
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
