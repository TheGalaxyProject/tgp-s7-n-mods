.class Lcom/android/keyguard/util/ShortcutManager$6;
.super Landroid/os/AsyncTask;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/util/ShortcutManager;->updateShortcutsIcon(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/util/ShortcutManager;

.field final synthetic val$th:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/util/ShortcutManager;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/util/ShortcutManager;
    .param p2, "val$th"    # I

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/keyguard/util/ShortcutManager$6;->this$0:Lcom/android/keyguard/util/ShortcutManager;

    iput p2, p0, Lcom/android/keyguard/util/ShortcutManager$6;->val$th:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    .line 553
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 558
    .local v2, "th":I
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/util/ShortcutManager$6;->this$0:Lcom/android/keyguard/util/ShortcutManager;

    invoke-static {v3}, Lcom/android/keyguard/util/ShortcutManager;->-get0(Lcom/android/keyguard/util/ShortcutManager;)Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/util/ShortcutManager$6;->this$0:Lcom/android/keyguard/util/ShortcutManager;

    invoke-static {v4}, Lcom/android/keyguard/util/ShortcutManager;->-get1(Lcom/android/keyguard/util/ShortcutManager;)[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    move-result-object v4

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 559
    const/4 v5, 0x1

    .line 558
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 564
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v3, p0, Lcom/android/keyguard/util/ShortcutManager$6;->this$0:Lcom/android/keyguard/util/ShortcutManager;

    invoke-static {v3}, Lcom/android/keyguard/util/ShortcutManager;->-get1(Lcom/android/keyguard/util/ShortcutManager;)[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    move-result-object v3

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/keyguard/util/ShortcutManager$6;->this$0:Lcom/android/keyguard/util/ShortcutManager;

    invoke-static {v4, v0}, Lcom/android/keyguard/util/ShortcutManager;->-wrap0(Lcom/android/keyguard/util/ShortcutManager;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 566
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v3

    .line 560
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 561
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 552
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/util/ShortcutManager$6;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 571
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager$6;->this$0:Lcom/android/keyguard/util/ShortcutManager;

    iget-object v0, v0, Lcom/android/keyguard/util/ShortcutManager;->mCallback:Lcom/android/keyguard/util/ShortcutManager$ShortcutCallback;

    iget v1, p0, Lcom/android/keyguard/util/ShortcutManager$6;->val$th:I

    invoke-interface {v0, v1}, Lcom/android/keyguard/util/ShortcutManager$ShortcutCallback;->updateShortcutIconOnly(I)V

    .line 570
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 570
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/util/ShortcutManager$6;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
