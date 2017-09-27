.class public Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;
.super Ljava/lang/Object;
.source "XSMessageFormatter.java"

# interfaces
.implements Lmf/org/apache/xerces/util/MessageFormatter;


# static fields
.field public static final SCHEMA_DOMAIN:Ljava/lang/String; = "http://www.w3.org/TR/xml-schema-1"


# instance fields
.field private fLocale:Ljava/util/Locale;

.field private fResourceBundle:Ljava/util/ResourceBundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;->fLocale:Ljava/util/Locale;

    .line 44
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    .line 35
    return-void
.end method


# virtual methods
.method public formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 67
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;->fLocale:Ljava/util/Locale;

    if-ne p1, v0, :cond_1

    .line 74
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    invoke-virtual {v0, p2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    if-nez p3, :cond_2

    .line 84
    :goto_2
    if-eqz v0, :cond_3

    .line 90
    return-object v0

    .line 65
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "mf.org.apache.xerces.impl.msg.XMLSchemaMessages"

    .line 69
    invoke-static {v0, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    .line 71
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;->fLocale:Ljava/util/Locale;

    goto :goto_1

    .line 77
    :cond_2
    :try_start_0
    invoke-static {v0, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_2

    .line 78
    :catch_0
    move-exception v0

    .line 79
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    const-string/jumbo v1, "FormatFailed"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    invoke-virtual {v1, p2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 85
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    const-string/jumbo v1, "BadMessageKey"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/util/MissingResourceException;

    const-string/jumbo v2, "mf.org.apache.xerces.impl.msg.SchemaMessages"

    invoke-direct {v1, v0, v2, p2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method
