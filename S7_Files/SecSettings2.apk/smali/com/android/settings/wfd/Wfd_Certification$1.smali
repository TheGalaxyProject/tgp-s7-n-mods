.class Lcom/android/settings/wfd/Wfd_Certification$1;
.super Landroid/preference/Preference;
.source "Wfd_Certification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/Wfd_Certification;->buildCertificationMenu(Landroid/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/Wfd_Certification;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/Wfd_Certification;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wfd/Wfd_Certification;
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings/wfd/Wfd_Certification$1;->this$0:Lcom/android/settings/wfd/Wfd_Certification;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 109
    if-nez p1, :cond_0

    .line 110
    iget-object v3, p0, Lcom/android/settings/wfd/Wfd_Certification$1;->this$0:Lcom/android/settings/wfd/Wfd_Certification;

    invoke-static {v3}, Lcom/android/settings/wfd/Wfd_Certification;->-get1(Lcom/android/settings/wfd/Wfd_Certification;)Landroid/content/Context;

    move-result-object v3

    .line 111
    const-string/jumbo v4, "layout_inflater"

    .line 110
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 112
    .local v1, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f0402f5

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 117
    .end local v1    # "li":Landroid/view/LayoutInflater;
    .local v2, "v":Landroid/view/View;
    :goto_0
    const v3, 0x7f1101b6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 118
    .local v0, "b":Landroid/widget/Button;
    const v3, 0x7f0b122c

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 119
    new-instance v3, Lcom/android/settings/wfd/Wfd_Certification$1$1;

    invoke-direct {v3, p0}, Lcom/android/settings/wfd/Wfd_Certification$1$1;-><init>(Lcom/android/settings/wfd/Wfd_Certification$1;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v3, 0x7f1101b7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "b":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 127
    .restart local v0    # "b":Landroid/widget/Button;
    const v3, 0x7f0b122d

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 128
    new-instance v3, Lcom/android/settings/wfd/Wfd_Certification$1$2;

    invoke-direct {v3, p0}, Lcom/android/settings/wfd/Wfd_Certification$1$2;-><init>(Lcom/android/settings/wfd/Wfd_Certification$1;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    return-object v2

    .line 114
    .end local v0    # "b":Landroid/widget/Button;
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    move-object v2, p1

    .restart local v2    # "v":Landroid/view/View;
    goto :goto_0
.end method
