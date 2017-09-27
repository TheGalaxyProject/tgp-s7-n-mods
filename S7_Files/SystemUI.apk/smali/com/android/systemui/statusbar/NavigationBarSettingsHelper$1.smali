.class Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$1;
.super Landroid/database/ContentObserver;
.source "NavigationBarSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$1;->this$0:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 55
    if-nez p2, :cond_0

    return-void

    .line 56
    :cond_0
    const-string/jumbo v2, "NavBarSettingsHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " changed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string/jumbo v2, "NavBarSettingsHelper"

    const-string/jumbo v3, "onChange()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v2, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$1;->this$0:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->-get0(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 60
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 61
    iget-object v2, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$1;->this$0:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->-get0(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->equals(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$1;->this$0:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->-get0(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$1;->this$0:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->-get2(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->read(Landroid/content/ContentResolver;)V

    .line 60
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$1;->this$0:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-static {v2, p2}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->-wrap0(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Landroid/net/Uri;)V

    .line 53
    return-void
.end method
