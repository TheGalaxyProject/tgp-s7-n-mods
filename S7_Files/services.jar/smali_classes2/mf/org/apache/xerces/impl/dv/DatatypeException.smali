.class public Lmf/org/apache/xerces/impl/dv/DatatypeException;
.super Ljava/lang/Exception;
.source "DatatypeException.java"


# static fields
.field static final serialVersionUID:J = 0x1aef209f3de7d52aL


# instance fields
.field protected final args:[Ljava/lang/Object;

.field protected final key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/DatatypeException;->key:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/DatatypeException;->args:[Ljava/lang/Object;

    .line 55
    return-void
.end method


# virtual methods
.method public getArgs()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/DatatypeException;->args:[Ljava/lang/Object;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/DatatypeException;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 4

    .prologue
    const-string/jumbo v0, "mf.org.apache.xerces.impl.msg.XMLSchemaMessages"

    .line 85
    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_0

    .line 90
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/DatatypeException;->key:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_1

    .line 97
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/DatatypeException;->args:[Ljava/lang/Object;

    if-nez v2, :cond_2

    .line 106
    :goto_0
    return-object v0

    .line 88
    :cond_0
    new-instance v0, Ljava/util/MissingResourceException;

    const-string/jumbo v1, "Property file not found!"

    const-string/jumbo v2, "mf.org.apache.xerces.impl.msg.XMLSchemaMessages"

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/DatatypeException;->key:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo v0, "BadMessageKey"

    .line 92
    invoke-virtual {v1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/util/MissingResourceException;

    const-string/jumbo v2, "mf.org.apache.xerces.impl.msg.XMLSchemaMessages"

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/DatatypeException;->key:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_2
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/DatatypeException;->args:[Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    const-string/jumbo v0, "FormatFailed"

    .line 101
    invoke-virtual {v1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/DatatypeException;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
