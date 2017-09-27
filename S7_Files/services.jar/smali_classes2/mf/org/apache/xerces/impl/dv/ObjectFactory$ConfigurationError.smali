.class final Lmf/org/apache/xerces/impl/dv/ObjectFactory$ConfigurationError;
.super Ljava/lang/Error;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dv/ObjectFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConfigurationError"
.end annotation


# static fields
.field static final serialVersionUID:J = 0x7643cb280727887cL


# instance fields
.field private exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 530
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 531
    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/ObjectFactory$ConfigurationError;->exception:Ljava/lang/Exception;

    .line 532
    return-void
.end method


# virtual methods
.method getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ObjectFactory$ConfigurationError;->exception:Ljava/lang/Exception;

    return-object v0
.end method
