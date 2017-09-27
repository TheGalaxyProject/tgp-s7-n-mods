.class Lcom/android/server/clipboardex/ClipboardExService$4;
.super Ljava/lang/Object;
.source "ClipboardExService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/clipboardex/ClipboardExService;->addData(ILcom/samsung/android/content/clipboard/data/SemClipData;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/clipboardex/ClipboardExService;

.field final synthetic val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

.field final synthetic val$data:Lcom/samsung/android/content/clipboard/data/SemClipData;

.field final synthetic val$format:I


# direct methods
.method constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;Lcom/samsung/android/content/clipboard/data/SemClipData;ILcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p2, "val$addItem"    # Lcom/samsung/android/content/clipboard/data/SemClipData;
    .param p3, "val$format"    # I
    .param p4, "val$data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iput-object p2, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    iput p3, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$format:I

    iput-object p4, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$data:Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 1029
    const/4 v7, 0x0

    .line 1030
    .local v7, "thumFullPath":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-virtual {v11}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_4

    .line 1031
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast v3, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    .line 1032
    .local v3, "htmlData":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getThumbnailImagePath()Ljava/lang/String;

    move-result-object v2

    .line 1033
    .local v2, "firstImagePath":Ljava/lang/String;
    const-string/jumbo v11, ""

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1034
    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v11}, Lcom/android/server/clipboardex/ClipboardExService;->-get6(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 1035
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v12}, Lcom/android/server/clipboardex/ClipboardExService;->-get6(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v12, v3}, Landroid/sec/clipboard/util/FileHelper;->createThumnailFromData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;)Ljava/lang/String;

    move-result-object v7

    .line 1036
    .local v7, "thumFullPath":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/server/clipboardex/ClipboardExService;->-set2(Lcom/android/server/clipboardex/ClipboardExService;Landroid/content/Context;)Landroid/content/Context;

    .line 1040
    .end local v7    # "thumFullPath":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 1041
    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast v11, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    invoke-virtual {v11, v7}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setThumbnailImagePath(Ljava/lang/String;)Z

    .line 1059
    .end local v2    # "firstImagePath":Ljava/lang/String;
    .end local v3    # "htmlData":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    :cond_1
    :goto_1
    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v11}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    iget-object v13, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v13}, Lcom/android/server/clipboardex/ClipboardExService;->-get1(Lcom/android/server/clipboardex/ClipboardExService;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/sec/clipboard/data/ClipboardDataMgr;->addData(Lcom/samsung/android/content/clipboard/data/SemClipData;I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1060
    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v12, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-virtual {v12}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v12

    const-string/jumbo v13, "CBCT"

    invoke-static {v11, v12, v13}, Lcom/android/server/clipboardex/ClipboardExService;->-wrap6(Lcom/android/server/clipboardex/ClipboardExService;ILjava/lang/String;)V

    .line 1061
    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v12, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v12}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/clipboardex/ClipboardExService;->-wrap7(Lcom/android/server/clipboardex/ClipboardExService;Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 1062
    iget-object v12, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-virtual {v11}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    :goto_2
    invoke-static {v12, v11}, Lcom/android/server/clipboardex/ClipboardExService;->-set0(Lcom/android/server/clipboardex/ClipboardExService;Z)Z

    .line 1063
    const-string/jumbo v11, "ClipboardExService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "add success && KNOX_PASTE_FLAG is : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v13}, Lcom/android/server/clipboardex/ClipboardExService;->-get0(Lcom/android/server/clipboardex/ClipboardExService;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :goto_3
    iget v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$format:I

    sparse-switch v11, :sswitch_data_0

    .line 1091
    :goto_4
    if-eqz v7, :cond_2

    .line 1092
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1093
    .local v0, "deleteFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string/jumbo v11, "/data/clipboard/temp/"

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1095
    .local v5, "pasteFile":Ljava/io/File;
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 1096
    const-string/jumbo v11, "ClipboardExService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "No target file...thumFullPath : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    .end local v0    # "deleteFile":Ljava/io/File;
    .end local v5    # "pasteFile":Ljava/io/File;
    :cond_2
    :goto_5
    return-void

    .line 1037
    .restart local v2    # "firstImagePath":Ljava/lang/String;
    .restart local v3    # "htmlData":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    .local v7, "thumFullPath":Ljava/lang/String;
    :cond_3
    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v11}, Lcom/android/server/clipboardex/ClipboardExService;->-get5(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 1038
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v12}, Lcom/android/server/clipboardex/ClipboardExService;->-get5(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v12, v3}, Landroid/sec/clipboard/util/FileHelper;->createThumnailFromData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;)Ljava/lang/String;

    move-result-object v7

    .local v7, "thumFullPath":Ljava/lang/String;
    goto/16 :goto_0

    .line 1044
    .end local v2    # "firstImagePath":Ljava/lang/String;
    .end local v3    # "htmlData":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    .local v7, "thumFullPath":Ljava/lang/String;
    :cond_4
    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-virtual {v11}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v11

    const/16 v12, 0x10

    if-ne v11, v12, :cond_1

    .line 1045
    iget-object v10, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast v10, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    .line 1046
    .local v10, "uriData":Lcom/samsung/android/content/clipboard/data/SemUriClipData;
    invoke-virtual {v10}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v8

    .line 1047
    .local v8, "thumbnailImagePath":Ljava/lang/String;
    const-string/jumbo v11, ""

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1048
    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v11}, Lcom/android/server/clipboardex/ClipboardExService;->-get6(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 1049
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v12}, Lcom/android/server/clipboardex/ClipboardExService;->-get6(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Landroid/sec/clipboard/util/FileHelper;->createThumnailFromUriData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemUriClipData;)Ljava/lang/String;

    move-result-object v7

    .line 1053
    .end local v7    # "thumFullPath":Ljava/lang/String;
    :cond_5
    :goto_6
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 1054
    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast v11, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    invoke-virtual {v11, v7}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->setThumbnailPath(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 1050
    .restart local v7    # "thumFullPath":Ljava/lang/String;
    :cond_6
    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v11}, Lcom/android/server/clipboardex/ClipboardExService;->-get5(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 1051
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v12}, Lcom/android/server/clipboardex/ClipboardExService;->-get5(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Landroid/sec/clipboard/util/FileHelper;->createThumnailFromUriData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemUriClipData;)Ljava/lang/String;

    move-result-object v7

    .local v7, "thumFullPath":Ljava/lang/String;
    goto :goto_6

    .line 1062
    .end local v7    # "thumFullPath":Ljava/lang/String;
    .end local v8    # "thumbnailImagePath":Ljava/lang/String;
    .end local v10    # "uriData":Lcom/samsung/android/content/clipboard/data/SemUriClipData;
    :cond_7
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 1065
    :cond_8
    const-string/jumbo v11, "ClipboardExService"

    const-string/jumbo v12, "Failed to add data."

    invoke-static {v11, v12}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1071
    :sswitch_0
    iget-object v9, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$data:Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast v9, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    .line 1072
    .local v9, "trgData":Lcom/samsung/android/content/clipboard/data/SemImageClipData;
    invoke-virtual {v9}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v4

    .line 1073
    .local v4, "imagePath":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 1074
    .local v1, "extraFilePath":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->HasExtraData()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1075
    invoke-virtual {v9}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getExtraDataPath()Ljava/lang/String;

    move-result-object v1

    .line 1077
    :cond_9
    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v11, v4, v1}, Lcom/android/server/clipboardex/ClipboardExService;->-wrap3(Lcom/android/server/clipboardex/ClipboardExService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1080
    .end local v1    # "extraFilePath":Ljava/lang/String;
    .end local v4    # "imagePath":Ljava/lang/String;
    .end local v9    # "trgData":Lcom/samsung/android/content/clipboard/data/SemImageClipData;
    :sswitch_1
    iget-object v10, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$data:Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast v10, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    .line 1081
    .restart local v10    # "uriData":Lcom/samsung/android/content/clipboard/data/SemUriClipData;
    invoke-virtual {v10}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v6

    .line 1082
    .local v6, "previewImagePath":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    const/4 v12, 0x0

    invoke-static {v11, v6, v12}, Lcom/android/server/clipboardex/ClipboardExService;->-wrap3(Lcom/android/server/clipboardex/ClipboardExService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1085
    .end local v6    # "previewImagePath":Ljava/lang/String;
    .end local v10    # "uriData":Lcom/samsung/android/content/clipboard/data/SemUriClipData;
    :sswitch_2
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$data:Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast v3, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    .line 1086
    .restart local v3    # "htmlData":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getThumbnailImagePath()Ljava/lang/String;

    move-result-object v2

    .line 1087
    .restart local v2    # "firstImagePath":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    const/4 v12, 0x0

    invoke-static {v11, v2, v12}, Lcom/android/server/clipboardex/ClipboardExService;->-wrap3(Lcom/android/server/clipboardex/ClipboardExService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1098
    .end local v2    # "firstImagePath":Ljava/lang/String;
    .end local v3    # "htmlData":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    .restart local v0    # "deleteFile":Ljava/io/File;
    .restart local v5    # "pasteFile":Ljava/io/File;
    :cond_a
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1099
    const-string/jumbo v11, "ClipboardExService"

    const-string/jumbo v12, "Temp preview file of html item will be deleted"

    invoke-static {v11, v12}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    goto/16 :goto_5

    .line 1069
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0x10 -> :sswitch_1
    .end sparse-switch
.end method
