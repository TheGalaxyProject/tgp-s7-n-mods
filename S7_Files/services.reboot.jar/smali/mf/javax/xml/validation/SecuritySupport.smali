.class Lmf/javax/xml/validation/SecuritySupport;
.super Ljava/lang/Object;
.source "SecuritySupport.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method doesFileExist(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 175
    new-instance v0, Lmf/javax/xml/validation/SecuritySupport$8;

    invoke-direct {v0, p0, p1}, Lmf/javax/xml/validation/SecuritySupport$8;-><init>(Lmf/javax/xml/validation/SecuritySupport;Ljava/io/File;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 179
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 174
    return v0
.end method

.method getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lmf/javax/xml/validation/SecuritySupport$1;

    invoke-direct {v0, p0}, Lmf/javax/xml/validation/SecuritySupport$1;-><init>(Lmf/javax/xml/validation/SecuritySupport;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 65
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
    .line 93
    :try_start_0
    new-instance v0, Lmf/javax/xml/validation/SecuritySupport$3;

    invoke-direct {v0, p0, p1}, Lmf/javax/xml/validation/SecuritySupport$3;-><init>(Lmf/javax/xml/validation/SecuritySupport;Ljava/io/File;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    return-object v0

    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Ljava/io/FileNotFoundException;

    throw v0
.end method

.method getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lmf/javax/xml/validation/SecuritySupport$7;

    invoke-direct {v0, p0, p1, p2}, Lmf/javax/xml/validation/SecuritySupport$7;-><init>(Lmf/javax/xml/validation/SecuritySupport;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 159
    return-object v0
.end method

.method getResourceAsURL(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lmf/javax/xml/validation/SecuritySupport$5;

    invoke-direct {v0, p0, p1, p2}, Lmf/javax/xml/validation/SecuritySupport$5;-><init>(Lmf/javax/xml/validation/SecuritySupport;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 121
    return-object v0
.end method

.method getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    :try_start_0
    new-instance v0, Lmf/javax/xml/validation/SecuritySupport$6;

    invoke-direct {v0, p0, p1, p2}, Lmf/javax/xml/validation/SecuritySupport$6;-><init>(Lmf/javax/xml/validation/SecuritySupport;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    return-object v0

    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0
.end method

.method getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lmf/javax/xml/validation/SecuritySupport$2;

    invoke-direct {v0, p0, p1}, Lmf/javax/xml/validation/SecuritySupport$2;-><init>(Lmf/javax/xml/validation/SecuritySupport;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    return-object v0
.end method

.method getURLInputStream(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    :try_start_0
    new-instance v0, Lmf/javax/xml/validation/SecuritySupport$4;

    invoke-direct {v0, p0, p1}, Lmf/javax/xml/validation/SecuritySupport$4;-><init>(Lmf/javax/xml/validation/SecuritySupport;Ljava/net/URL;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    return-object v0

    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0
.end method
