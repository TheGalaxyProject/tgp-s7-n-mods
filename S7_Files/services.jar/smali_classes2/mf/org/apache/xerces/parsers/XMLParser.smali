.class public abstract Lmf/org/apache/xerces/parsers/XMLParser;
.super Ljava/lang/Object;
.source "XMLParser.java"


# static fields
.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;


# instance fields
.field protected final fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 64
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/entity-resolver"

    .line 65
    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/error-handler"

    .line 66
    aput-object v2, v0, v1

    .line 64
    sput-object v0, Lmf/org/apache/xerces/parsers/XMLParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 67
    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/XMLParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .line 89
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    sget-object v1, Lmf/org/apache/xerces/parsers/XMLParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    .line 91
    return-void
.end method


# virtual methods
.method public parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/XMLParser;->reset()V

    .line 109
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    .line 111
    return-void
.end method

.method protected reset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 121
    return-void
.end method
