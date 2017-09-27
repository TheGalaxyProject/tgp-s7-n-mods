.class public Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;
.super Ljava/lang/Object;
.source "ViewHolder.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder$OnCheckedListener;
    }
.end annotation


# instance fields
.field private L:Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder$OnCheckedListener;

.field public dataUsageText:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field public name:Landroid/widget/TextView;

.field public postion:I

.field public toggle:[Landroid/widget/CheckBox;

.field public wifiUsageText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder$OnCheckedListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder$OnCheckedListener;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->toggle:[Landroid/widget/CheckBox;

    .line 38
    iput-object p2, p0, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->L:Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder$OnCheckedListener;

    .line 37
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 51
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->L:Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder$OnCheckedListener;

    iget v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->postion:I

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v2, v0, p2}, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder$OnCheckedListener;->onChecked(IIZ)V

    .line 50
    return-void
.end method

.method public setCheckBox(IZ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->toggle:[Landroid/widget/CheckBox;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 41
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "postion"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->postion:I

    .line 45
    return-void
.end method
