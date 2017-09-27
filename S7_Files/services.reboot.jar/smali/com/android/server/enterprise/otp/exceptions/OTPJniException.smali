.class public Lcom/android/server/enterprise/otp/exceptions/OTPJniException;
.super Ljava/lang/Exception;
.source "OTPJniException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public static addStackTraceElement(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;
    .param p3, "line"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x2f

    .line 25
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 26
    .local v0, "currentStack":[Ljava/lang/StackTraceElement;
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Ljava/lang/StackTraceElement;

    .line 28
    .local v1, "newStack":[Ljava/lang/StackTraceElement;
    array-length v2, v0

    const/4 v3, 0x1

    invoke-static {v0, v5, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    const/16 v2, 0x5c

    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 31
    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 32
    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 35
    :cond_0
    new-instance v2, Ljava/lang/StackTraceElement;

    const-string/jumbo v3, "<native>"

    invoke-direct {v2, v3, p1, p2, p3}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v2, v1, v5

    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 24
    return-void
.end method


# virtual methods
.method public __jni_setLocation(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;
    .param p3, "line"    # I

    .prologue
    .line 17
    const-string/jumbo v0, "Adding exception from OTP JNI"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "File : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Line : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Function : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 21
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/enterprise/otp/exceptions/OTPJniException;->addStackTraceElement(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    return-void
.end method
