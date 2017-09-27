.class public abstract Lmf/org/apache/xml/serialize/SerializerFactory;
.super Ljava/lang/Object;
.source "SerializerFactory.java"


# static fields
.field public static final FactoriesProperty:Ljava/lang/String; = "org.apache.xml.serialize.factories"

.field private static _factories:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 39
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xml/serialize/SerializerFactory;->_factories:Ljava/util/Hashtable;

    .line 51
    new-instance v0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;

    const-string/jumbo v1, "xml"

    invoke-direct {v0, v1}, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-static {v0}, Lmf/org/apache/xml/serialize/SerializerFactory;->registerSerializerFactory(Lmf/org/apache/xml/serialize/SerializerFactory;)V

    .line 53
    new-instance v0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;

    const-string/jumbo v1, "html"

    invoke-direct {v0, v1}, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-static {v0}, Lmf/org/apache/xml/serialize/SerializerFactory;->registerSerializerFactory(Lmf/org/apache/xml/serialize/SerializerFactory;)V

    .line 55
    new-instance v0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;

    const-string/jumbo v1, "xhtml"

    invoke-direct {v0, v1}, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-static {v0}, Lmf/org/apache/xml/serialize/SerializerFactory;->registerSerializerFactory(Lmf/org/apache/xml/serialize/SerializerFactory;)V

    .line 57
    new-instance v0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;

    const-string/jumbo v1, "text"

    invoke-direct {v0, v1}, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-static {v0}, Lmf/org/apache/xml/serialize/SerializerFactory;->registerSerializerFactory(Lmf/org/apache/xml/serialize/SerializerFactory;)V

    const-string/jumbo v0, "org.apache.xml.serialize.factories"

    .line 60
    invoke-static {v0}, Lmf/org/apache/xml/serialize/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    if-nez v0, :cond_1

    .line 73
    :cond_0
    return-void

    .line 62
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v2, " ;,:"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-class v2, Lmf/org/apache/xml/serialize/SerializerFactory;

    .line 67
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 66
    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lmf/org/apache/xml/serialize/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xml/serialize/SerializerFactory;

    .line 68
    sget-object v2, Lmf/org/apache/xml/serialize/SerializerFactory;->_factories:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/SerializerFactory;->getSupportedMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    sget-object v2, Lmf/org/apache/xml/serialize/SerializerFactory;->_factories:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/SerializerFactory;->getSupportedMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSerializerFactory(Ljava/lang/String;)Lmf/org/apache/xml/serialize/SerializerFactory;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lmf/org/apache/xml/serialize/SerializerFactory;->_factories:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xml/serialize/SerializerFactory;

    return-object v0
.end method

.method public static registerSerializerFactory(Lmf/org/apache/xml/serialize/SerializerFactory;)V
    .locals 3

    .prologue
    .line 84
    sget-object v1, Lmf/org/apache/xml/serialize/SerializerFactory;->_factories:Ljava/util/Hashtable;

    monitor-enter v1

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/SerializerFactory;->getSupportedMethod()Ljava/lang/String;

    move-result-object v0

    .line 86
    sget-object v2, Lmf/org/apache/xml/serialize/SerializerFactory;->_factories:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    monitor-exit v1

    .line 88
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected abstract getSupportedMethod()Ljava/lang/String;
.end method

.method public abstract makeSerializer(Ljava/io/OutputStream;Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public abstract makeSerializer(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;
.end method

.method public abstract makeSerializer(Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;
.end method
