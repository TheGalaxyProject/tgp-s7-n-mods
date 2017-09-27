.class Landroid/widget/RemoteViews$ImageFilterAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageFilterAction"
.end annotation


# static fields
.field public static final TAG:I = 0x1f


# instance fields
.field arg1:F

.field arg2:F

.field arg3:F

.field arg4:F

.field arg5:F

.field arg6:F

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field type:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IIFFFFFF)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I
    .param p3, "type"    # I
    .param p4, "arg1"    # F
    .param p5, "arg2"    # F
    .param p6, "arg3"    # F
    .param p7, "arg4"    # F
    .param p8, "arg5"    # F
    .param p9, "arg6"    # F

    .prologue
    .line 4647
    iput-object p1, p0, Landroid/widget/RemoteViews$ImageFilterAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    .line 4649
    iput p2, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    .line 4650
    iput p3, p0, Landroid/widget/RemoteViews$ImageFilterAction;->type:I

    .line 4651
    iput p4, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg1:F

    .line 4652
    iput p5, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg2:F

    .line 4653
    iput p6, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg3:F

    .line 4654
    iput p7, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg4:F

    .line 4655
    iput p8, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg5:F

    .line 4656
    iput p9, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg6:F

    .line 4648
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 4659
    iput-object p1, p0, Landroid/widget/RemoteViews$ImageFilterAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    .line 4660
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    .line 4661
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ImageFilterAction;->type:I

    .line 4662
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg1:F

    .line 4663
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg2:F

    .line 4664
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg3:F

    .line 4665
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg4:F

    .line 4666
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg5:F

    .line 4667
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg6:F

    .line 4659
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .prologue
    .line 4687
    iget v1, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4688
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_0

    return-void

    .line 4690
    :cond_0
    iget v1, p0, Landroid/widget/RemoteViews$ImageFilterAction;->type:I

    .line 4686
    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4713
    const-string/jumbo v0, "ImageFilterAction"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 4672
    const/16 v0, 0x1f

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4673
    iget v0, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4674
    iget v0, p0, Landroid/widget/RemoteViews$ImageFilterAction;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4675
    iget v0, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg1:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4676
    iget v0, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg2:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4677
    iget v0, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg3:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4678
    iget v0, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg4:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4679
    iget v0, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg5:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4680
    iget v0, p0, Landroid/widget/RemoteViews$ImageFilterAction;->arg6:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4671
    return-void
.end method
