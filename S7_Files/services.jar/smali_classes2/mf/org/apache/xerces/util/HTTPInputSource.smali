.class public final Lmf/org/apache/xerces/util/HTTPInputSource;
.super Lmf/org/apache/xerces/xni/parser/XMLInputSource;
.source "HTTPInputSource.java"


# instance fields
.field protected fFollowRedirects:Z

.field protected fHTTPRequestProperties:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/util/HTTPInputSource;->fFollowRedirects:Z

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 104
    invoke-direct/range {p0 .. p5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/util/HTTPInputSource;->fFollowRedirects:Z

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 125
    invoke-direct/range {p0 .. p5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/util/HTTPInputSource;->fFollowRedirects:Z

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    .line 126
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/util/HTTPInputSource;->fFollowRedirects:Z

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    .line 85
    return-void
.end method


# virtual methods
.method public getFollowHTTPRedirects()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lmf/org/apache/xerces/util/HTTPInputSource;->fFollowRedirects:Z

    return v0
.end method

.method public getHTTPRequestProperties()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lmf/org/apache/xerces/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getHTTPRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lmf/org/apache/xerces/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setFollowHTTPRedirects(Z)V
    .locals 0

    .prologue
    .line 146
    iput-boolean p1, p0, Lmf/org/apache/xerces/util/HTTPInputSource;->fFollowRedirects:Z

    .line 147
    return-void
.end method

.method public setHTTPRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 184
    if-nez p2, :cond_0

    .line 188
    iget-object v0, p0, Lmf/org/apache/xerces/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
