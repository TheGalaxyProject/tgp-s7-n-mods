.class Lcom/android/keyguard/util/SettingsHelper$1;
.super Landroid/database/ContentObserver;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/util/SettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/util/SettingsHelper;


# direct methods
.method constructor <init>(Lcom/android/keyguard/util/SettingsHelper;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/util/SettingsHelper;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/keyguard/util/SettingsHelper$1;->this$0:Lcom/android/keyguard/util/SettingsHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 8
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 129
    if-nez p2, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 133
    .local v2, "sTime":J
    const-string/jumbo v4, "SettingsHelper"

    const-string/jumbo v5, "onChange()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v4, p0, Lcom/android/keyguard/util/SettingsHelper$1;->this$0:Lcom/android/keyguard/util/SettingsHelper;

    invoke-static {v4}, Lcom/android/keyguard/util/SettingsHelper;->-get0(Lcom/android/keyguard/util/SettingsHelper;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 135
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 136
    iget-object v4, p0, Lcom/android/keyguard/util/SettingsHelper$1;->this$0:Lcom/android/keyguard/util/SettingsHelper;

    invoke-static {v4}, Lcom/android/keyguard/util/SettingsHelper;->-get0(Lcom/android/keyguard/util/SettingsHelper;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v4, p2}, Lcom/android/keyguard/util/SettingsHelper$Item;->equals(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 137
    iget-object v4, p0, Lcom/android/keyguard/util/SettingsHelper$1;->this$0:Lcom/android/keyguard/util/SettingsHelper;

    invoke-static {v4}, Lcom/android/keyguard/util/SettingsHelper;->-get0(Lcom/android/keyguard/util/SettingsHelper;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/util/SettingsHelper$Item;

    iget-object v5, p0, Lcom/android/keyguard/util/SettingsHelper$1;->this$0:Lcom/android/keyguard/util/SettingsHelper;

    invoke-static {v5}, Lcom/android/keyguard/util/SettingsHelper;->-get1(Lcom/android/keyguard/util/SettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/util/SettingsHelper$Item;->read(Landroid/content/ContentResolver;)V

    .line 135
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_2
    const-string/jumbo v4, "SettingsHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onChange() elapsed= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v4, p0, Lcom/android/keyguard/util/SettingsHelper$1;->this$0:Lcom/android/keyguard/util/SettingsHelper;

    invoke-static {v4, p2}, Lcom/android/keyguard/util/SettingsHelper;->-wrap0(Lcom/android/keyguard/util/SettingsHelper;Landroid/net/Uri;)V

    .line 127
    return-void
.end method
