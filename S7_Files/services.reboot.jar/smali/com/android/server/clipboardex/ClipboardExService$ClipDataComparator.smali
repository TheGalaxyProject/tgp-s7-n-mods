.class Lcom/android/server/clipboardex/ClipboardExService$ClipDataComparator;
.super Ljava/lang/Object;
.source "ClipboardExService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboardex/ClipboardExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClipDataComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/android/content/clipboard/data/SemClipData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/clipboardex/ClipboardExService;


# direct methods
.method private constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 1968
    iput-object p1, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipDataComparator;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;Lcom/android/server/clipboardex/ClipboardExService$ClipDataComparator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/clipboardex/ClipboardExService$ClipDataComparator;-><init>(Lcom/android/server/clipboardex/ClipboardExService;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/content/clipboard/data/SemClipData;Lcom/samsung/android/content/clipboard/data/SemClipData;)I
    .locals 6
    .param p1, "left"    # Lcom/samsung/android/content/clipboard/data/SemClipData;
    .param p2, "right"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 1971
    if-nez p2, :cond_0

    if-nez p1, :cond_0

    .line 1972
    const/4 v0, 0x0

    return v0

    .line 1973
    :cond_0
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 1974
    return v1

    .line 1975
    :cond_1
    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    .line 1976
    return v0

    .line 1978
    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "left"    # Ljava/lang/Object;
    .param p2, "right"    # Ljava/lang/Object;

    .prologue
    .line 1970
    check-cast p1, Lcom/samsung/android/content/clipboard/data/SemClipData;

    .end local p1    # "left":Ljava/lang/Object;
    check-cast p2, Lcom/samsung/android/content/clipboard/data/SemClipData;

    .end local p2    # "right":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboardex/ClipboardExService$ClipDataComparator;->compare(Lcom/samsung/android/content/clipboard/data/SemClipData;Lcom/samsung/android/content/clipboard/data/SemClipData;)I

    move-result v0

    return v0
.end method
