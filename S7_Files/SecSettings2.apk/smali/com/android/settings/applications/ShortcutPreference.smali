.class public Lcom/android/settings/applications/ShortcutPreference;
.super Landroid/preference/Preference;
.source "ShortcutPreference.java"


# instance fields
.field private final mPrefKey:Ljava/lang/String;

.field private final mTarget:Ljava/lang/Class;

.field private final mTitle:I


# virtual methods
.method protected onClick()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 49
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, ":settings:fragment_args_key"

    iget-object v1, p0, Lcom/android/settings/applications/ShortcutPreference;->mPrefKey:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/applications/ShortcutPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ShortcutPreference;->mTarget:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 52
    iget v5, p0, Lcom/android/settings/applications/ShortcutPreference;->mTitle:I

    .line 51
    const/4 v4, 0x0

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 47
    return-void
.end method
