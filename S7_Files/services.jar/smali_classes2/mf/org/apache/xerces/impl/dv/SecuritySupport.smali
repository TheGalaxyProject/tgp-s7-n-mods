.class final Lmf/org/apache/xerces/impl/dv/SecuritySupport;
.super Ljava/lang/Object;
.source "SecuritySupport.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lmf/org/apache/xerces/impl/dv/SecuritySupport$1;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/SecuritySupport$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 40
    return-object v0
.end method

.method static getFileExists(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lmf/org/apache/xerces/impl/dv/SecuritySupport$7;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/dv/SecuritySupport$7;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 128
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 123
    return v0
.end method

.method static getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 95
    :try_start_0
    new-instance v0, Lmf/org/apache/xerces/impl/dv/SecuritySupport$5;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/dv/SecuritySupport$5;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    return-object v0

    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Ljava/io/FileNotFoundException;

    throw v0
.end method

.method static getLastModified(Ljava/io/File;)J
    .locals 2

    .prologue
    .line 133
    new-instance v0, Lmf/org/apache/xerces/impl/dv/SecuritySupport$8;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/dv/SecuritySupport$8;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 137
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 132
    return-wide v0
.end method

.method static getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lmf/org/apache/xerces/impl/dv/SecuritySupport$3;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/dv/SecuritySupport$3;-><init>(Ljava/lang/ClassLoader;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 66
    return-object v0
.end method

.method static getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lmf/org/apache/xerces/impl/dv/SecuritySupport$6;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/xerces/impl/dv/SecuritySupport$6;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 108
    return-object v0
.end method

.method static getSystemClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lmf/org/apache/xerces/impl/dv/SecuritySupport$2;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/SecuritySupport$2;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 53
    return-object v0
.end method

.method static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lmf/org/apache/xerces/impl/dv/SecuritySupport$4;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/dv/SecuritySupport$4;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    return-object v0
.end method
