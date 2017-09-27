.class public final Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;
.super Ljava/lang/Object;
.source "DOMImplementationRegistry.java"


# static fields
.field private static final DEFAULT_DOM_IMPLEMENTATION_SOURCE:Ljava/lang/String; = "mf.org.apache.xerces.dom.DOMXSImplementationSourceImpl"

.field private static final DEFAULT_LINE_LENGTH:I = 0x50

.field public static final PROPERTY:Ljava/lang/String; = "org.w3c.dom.DOMImplementationSourceList"


# instance fields
.field private sources:Ljava/util/Vector;


# direct methods
.method private constructor <init>(Ljava/util/Vector;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->sources:Ljava/util/Vector;

    .line 89
    return-void
.end method

.method private static getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 253
    :try_start_0
    invoke-static {}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->getContextClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 255
    if-nez v0, :cond_0

    const-class v0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;

    .line 263
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    .line 256
    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    const-class v0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;

    .line 261
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 333
    invoke-static {}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->isJRE11()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$2;

    invoke-direct {v0}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$2;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 333
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 334
    goto :goto_0
.end method

.method private static getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 378
    invoke-static {}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->isJRE11()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$4;

    invoke-direct {v0, p0, p1}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$4;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 387
    return-object v0

    .line 380
    :cond_0
    if-eqz p0, :cond_1

    .line 383
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 385
    :goto_0
    return-object v0

    .line 381
    :cond_1
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method private static getServiceValue(Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string/jumbo v0, "META-INF/services/org.w3c.dom.DOMImplementationSourceList"

    .line 278
    :try_start_0
    invoke-static {p0, v0}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 280
    if-nez v1, :cond_1

    .line 305
    :cond_0
    return-object v4

    .line 284
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v3, 0x50

    invoke-direct {v0, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 293
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 296
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 298
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 299
    return-object v1

    .line 286
    :catch_0
    move-exception v0

    .line 288
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x50

    invoke-direct {v0, v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    goto :goto_0

    .line 299
    :catch_1
    move-exception v0

    .line 303
    return-object v4

    .line 294
    :catchall_0
    move-exception v1

    .line 296
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 297
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    invoke-static {}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->isJRE11()Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    new-instance v0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$3;

    invoke-direct {v0, p0}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$3;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 358
    :goto_0
    return-object v0

    .line 359
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static isJRE11()Z
    .locals 1

    .prologue
    :try_start_0
    const-string/jumbo v0, "java.security.AccessController"

    .line 315
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    .line 323
    const/4 v0, 0x1

    return v0
.end method

.method public static newInstance()Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 124
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 126
    invoke-static {}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string/jumbo v0, "org.w3c.dom.DOMImplementationSourceList"

    .line 128
    invoke-static {v0}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    if-nez v0, :cond_2

    .line 134
    :cond_0
    invoke-static {v2}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->getServiceValue(Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_0
    if-eqz v0, :cond_3

    .line 142
    :goto_1
    if-nez v0, :cond_4

    .line 159
    :cond_1
    new-instance v0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;

    invoke-direct {v0, v1}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;-><init>(Ljava/util/Vector;)V

    return-object v0

    .line 133
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "mf.org.apache.xerces.dom.DOMXSImplementationSourceImpl"

    goto :goto_1

    .line 143
    :cond_4
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 144
    :goto_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 149
    if-nez v2, :cond_5

    .line 152
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 155
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/DOMImplementationSource;

    .line 156
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    .line 150
    :cond_5
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public addSource(Lmf/org/w3c/dom/DOMImplementationSource;)V
    .locals 1

    .prologue
    .line 237
    if-eqz p1, :cond_0

    .line 240
    iget-object v0, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->sources:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    :goto_0
    return-void

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 241
    :cond_1
    iget-object v0, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->sources:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getDOMImplementation(Ljava/lang/String;)Lmf/org/w3c/dom/DOMImplementation;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 175
    iget-object v0, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->sources:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    .line 177
    :goto_0
    if-ge v1, v2, :cond_1

    .line 179
    iget-object v0, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->sources:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/DOMImplementationSource;

    .line 180
    invoke-interface {v0, p1}, Lmf/org/w3c/dom/DOMImplementationSource;->getDOMImplementation(Ljava/lang/String;)Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    .line 181
    if-nez v0, :cond_0

    .line 177
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 182
    :cond_0
    return-object v0

    .line 185
    :cond_1
    return-object v3
.end method

.method public getDOMImplementationList(Ljava/lang/String;)Lmf/org/w3c/dom/DOMImplementationList;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 200
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 201
    iget-object v0, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->sources:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    move v2, v1

    .line 202
    :goto_0
    if-ge v2, v4, :cond_1

    .line 204
    iget-object v0, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->sources:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/DOMImplementationSource;

    .line 206
    invoke-interface {v0, p1}, Lmf/org/w3c/dom/DOMImplementationSource;->getDOMImplementationList(Ljava/lang/String;)Lmf/org/w3c/dom/DOMImplementationList;

    move-result-object v5

    move v0, v1

    .line 207
    :goto_1
    invoke-interface {v5}, Lmf/org/w3c/dom/DOMImplementationList;->getLength()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 208
    invoke-interface {v5, v0}, Lmf/org/w3c/dom/DOMImplementationList;->item(I)Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v6

    .line 209
    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 202
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 212
    :cond_1
    new-instance v0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$1;

    invoke-direct {v0, p0, v3}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$1;-><init>(Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;Ljava/util/Vector;)V

    return-object v0
.end method
