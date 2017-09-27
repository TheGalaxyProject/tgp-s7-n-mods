.class Lcom/android/settings/notification/ZenAccessSettings$1;
.super Ljava/lang/Object;
.source "ZenAccessSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenAccessSettings;->reloadList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenAccessSettings;

.field final synthetic val$label:Ljava/lang/CharSequence;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenAccessSettings;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/ZenAccessSettings;
    .param p2, "val$pkg"    # Ljava/lang/String;
    .param p3, "val$label"    # Ljava/lang/CharSequence;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    iput-object p2, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->val$label:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 144
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 145
    .local v0, "access":Z
    if-eqz v0, :cond_0

    .line 146
    new-instance v1, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;-><init>()V

    .line 147
    iget-object v2, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->val$pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->val$label:Ljava/lang/CharSequence;

    .line 146
    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;->setPkgInfo(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;

    move-result-object v1

    .line 148
    iget-object v2, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-virtual {v2}, Lcom/android/settings/notification/ZenAccessSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "dialog"

    .line 146
    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 154
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 150
    :cond_0
    new-instance v1, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;-><init>()V

    .line 151
    iget-object v2, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->val$pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->val$label:Ljava/lang/CharSequence;

    .line 150
    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;->setPkgInfo(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;

    move-result-object v1

    .line 152
    iget-object v2, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-virtual {v2}, Lcom/android/settings/notification/ZenAccessSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "dialog"

    .line 150
    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
