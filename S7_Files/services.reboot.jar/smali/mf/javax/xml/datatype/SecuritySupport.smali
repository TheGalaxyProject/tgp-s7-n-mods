.class Lmf/javax/xml/datatype/SecuritySupport;
.super Ljava/lang/Object;
.source "SecuritySupport.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method doesFileExist(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lmf/javax/xml/datatype/SecuritySupport$5;

    invoke-direct {v0, p0, p1}, Lmf/javax/xml/datatype/SecuritySupport$5;-><init>(Lmf/javax/xml/datatype/SecuritySupport;Ljava/io/File;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 122
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 117
    return v0
.end method

.method getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lmf/javax/xml/datatype/SecuritySupport$1;

    invoke-direct {v0, p0}, Lmf/javax/xml/datatype/SecuritySupport$1;-><init>(Lmf/javax/xml/datatype/SecuritySupport;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 63
    return-object v0
.end method

.method getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 89
    :try_start_0
    new-instance v0, Lmf/javax/xml/datatype/SecuritySupport$3;

    invoke-direct {v0, p0, p1}, Lmf/javax/xml/datatype/SecuritySupport$3;-><init>(Lmf/javax/xml/datatype/SecuritySupport;Ljava/io/File;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    return-object v0

    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Ljava/io/FileNotFoundException;

    throw v0
.end method

.method getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lmf/javax/xml/datatype/SecuritySupport$4;

    invoke-direct {v0, p0, p1, p2}, Lmf/javax/xml/datatype/SecuritySupport$4;-><init>(Lmf/javax/xml/datatype/SecuritySupport;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 102
    return-object v0
.end method

.method getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lmf/javax/xml/datatype/SecuritySupport$2;

    invoke-direct {v0, p0, p1}, Lmf/javax/xml/datatype/SecuritySupport$2;-><init>(Lmf/javax/xml/datatype/SecuritySupport;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    return-object v0
.end method
