.class public Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItemHolder;
.super Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedViewHolder;
.source "SettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SettingsItemHolder"
.end annotation


# instance fields
.field public final imageView:Landroid/support/wearable/view/CircledImageView;

.field public final textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 215
    .local p0, "this":Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItemHolder;, "Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter<TT;>.SettingsItemHolder;"
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedViewHolder;-><init>(Landroid/view/View;)V

    .line 217
    const v0, 0x7f11004e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/CircledImageView;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItemHolder;->imageView:Landroid/support/wearable/view/CircledImageView;

    .line 218
    const v0, 0x7f110122

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItemHolder;->textView:Landroid/widget/TextView;

    .line 214
    return-void
.end method
