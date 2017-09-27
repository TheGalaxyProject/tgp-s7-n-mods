.class Lcom/samsung/android/app/executor/data/NlgRequestInfo$Attribute;
.super Ljava/lang/Object;
.source "NlgRequestInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/executor/data/NlgRequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Attribute"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/app/executor/data/NlgRequestInfo;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/executor/data/NlgRequestInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/samsung/android/app/executor/data/NlgRequestInfo$Attribute;->this$0:Lcom/samsung/android/app/executor/data/NlgRequestInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p2, p0, Lcom/samsung/android/app/executor/data/NlgRequestInfo$Attribute;->name:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/samsung/android/app/executor/data/NlgRequestInfo$Attribute;->value:Ljava/lang/String;

    .line 17
    return-void
.end method
