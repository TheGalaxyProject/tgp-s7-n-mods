.class final Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsViewHolder;
.super Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItemHolder;
.source "PermissionsSettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PermissionsViewHolder"
.end annotation


# instance fields
.field public final state:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItemHolder;-><init>(Landroid/view/View;)V

    .line 72
    const v0, 0x7f110133

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/PermissionsSettingsAdapter$PermissionsViewHolder;->state:Landroid/widget/TextView;

    .line 70
    return-void
.end method
