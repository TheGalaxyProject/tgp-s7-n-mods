.class public Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;
.super Landroid/widget/Spinner;
.source "LockNotiRestrictedPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReselectionSpinner"
.end annotation


# instance fields
.field private pref:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 233
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 232
    return-void
.end method


# virtual methods
.method public setPreference(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;)V
    .locals 0
    .param p1, "pref"    # Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;->pref:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    .line 236
    return-void
.end method

.method public setSelection(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;->getSelectedItemPosition()I

    move-result v1

    .line 243
    .local v1, "previousSelectedPosition":I
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 244
    if-ne p1, v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;->pref:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->-wrap2(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;->pref:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->-wrap5(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;Z)V

    .line 246
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;->pref:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-static {v2, p1}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->-wrap4(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;I)Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;

    move-result-object v0

    .line 247
    .local v0, "item":Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;
    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 249
    iget-object v3, v0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 248
    invoke-static {v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 241
    .end local v0    # "item":Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;
    :cond_0
    return-void
.end method
