.class Lcom/android/settings/notification/ZenRuleSelectionDialog$LoadIconTask;
.super Landroid/os/AsyncTask;
.source "ZenRuleSelectionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenRuleSelectionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/pm/ApplicationInfo;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

.field private final viewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/ZenRuleSelectionDialog;Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/notification/ZenRuleSelectionDialog;
    .param p2, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$LoadIconTask;->this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 203
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$LoadIconTask;->viewReference:Ljava/lang/ref/WeakReference;

    .line 202
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "params"    # [Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 208
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$LoadIconTask;->this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    invoke-static {v1}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->-get4(Lcom/android/settings/notification/ZenRuleSelectionDialog;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 207
    check-cast p1, [Landroid/content/pm/ApplicationInfo;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenRuleSelectionDialog$LoadIconTask;->doInBackground([Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 213
    if-eqz p1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$LoadIconTask;->viewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 215
    .local v0, "view":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    .end local v0    # "view":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "icon"    # Ljava/lang/Object;

    .prologue
    .line 212
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1    # "icon":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenRuleSelectionDialog$LoadIconTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
