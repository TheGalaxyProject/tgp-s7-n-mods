.class Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;
.super Landroid/os/AsyncTask;
.source "FontPreviewTablet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/FontPreviewTablet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/display/FontPreviewTablet;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/FontPreviewTablet;

    .prologue
    .line 1332
    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1332
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/display/FontPreviewTablet;Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/FontPreviewTablet;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;-><init>(Lcom/samsung/android/settings/display/FontPreviewTablet;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1355
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1356
    const/4 v4, 0x0

    .line 1357
    .local v4, "isLoadingComplited":Z
    const/4 v5, 0x0

    .line 1360
    .local v5, "loop":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->destroyInstance()V

    .line 1361
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-set0(Lcom/samsung/android/settings/display/FontPreviewTablet;Lcom/samsung/android/settings/flipfont/FontListAdapter;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    .line 1363
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    iget-object v7, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get3(Lcom/samsung/android/settings/display/FontPreviewTablet;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-set0(Lcom/samsung/android/settings/display/FontPreviewTablet;Lcom/samsung/android/settings/flipfont/FontListAdapter;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    .line 1364
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v6}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get2(Lcom/samsung/android/settings/display/FontPreviewTablet;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setInitDownloadFontAndThemeFont()V

    .line 1366
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v6}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get2(Lcom/samsung/android/settings/display/FontPreviewTablet;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    .line 1367
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v6}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get2(Lcom/samsung/android/settings/display/FontPreviewTablet;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 1370
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v6}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-wrap0(Lcom/samsung/android/settings/display/FontPreviewTablet;)Ljava/lang/String;

    move-result-object v3

    .line 1371
    .local v3, "fontName":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v6}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get2(Lcom/samsung/android/settings/display/FontPreviewTablet;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1372
    .local v2, "fontIndexPref":I
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v6}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get0(Lcom/samsung/android/settings/display/FontPreviewTablet;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "flip_font_style"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1406
    .end local v2    # "fontIndexPref":I
    .end local v3    # "fontName":Ljava/lang/String;
    :cond_0
    return-object v10

    .line 1374
    :catch_0
    move-exception v0

    .line 1375
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "FontPreview loading dialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "this is regarding debugging. it is not problem: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    :cond_1
    :goto_0
    if-nez v4, :cond_0

    if-ge v5, v11, :cond_0

    .line 1378
    add-int/lit8 v5, v5, 0x1

    .line 1381
    :try_start_1
    invoke-static {}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->destroyInstance()V

    .line 1382
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-set0(Lcom/samsung/android/settings/display/FontPreviewTablet;Lcom/samsung/android/settings/flipfont/FontListAdapter;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    .line 1384
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    iget-object v7, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get3(Lcom/samsung/android/settings/display/FontPreviewTablet;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-set0(Lcom/samsung/android/settings/display/FontPreviewTablet;Lcom/samsung/android/settings/flipfont/FontListAdapter;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    .line 1385
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v6}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get2(Lcom/samsung/android/settings/display/FontPreviewTablet;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setInitDownloadFontAndThemeFont()V

    .line 1387
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v6}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get2(Lcom/samsung/android/settings/display/FontPreviewTablet;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    .line 1388
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v6}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get2(Lcom/samsung/android/settings/display/FontPreviewTablet;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 1389
    const-string/jumbo v6, "FontPreview loading dialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loop:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v6}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-wrap0(Lcom/samsung/android/settings/display/FontPreviewTablet;)Ljava/lang/String;

    move-result-object v3

    .line 1393
    .restart local v3    # "fontName":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v6}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get2(Lcom/samsung/android/settings/display/FontPreviewTablet;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1394
    .restart local v2    # "fontIndexPref":I
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v6}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get0(Lcom/samsung/android/settings/display/FontPreviewTablet;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "flip_font_style"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1395
    const/4 v4, 0x1

    goto :goto_0

    .line 1396
    .end local v2    # "fontIndexPref":I
    .end local v3    # "fontName":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 1397
    .local v1, "e1":Ljava/lang/Exception;
    const-string/jumbo v6, "FontPreview loading dialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "this is regarding debugging. it is not problem: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    if-lt v5, v11, :cond_1

    .line 1399
    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->cancel(Z)Z

    goto/16 :goto_0
.end method

.method public getProgressDialog()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "unused"    # Ljava/lang/Object;

    .prologue
    .line 1410
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "unused":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "unused"    # Ljava/lang/Void;

    .prologue
    .line 1413
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get4(Lcom/samsung/android/settings/display/FontPreviewTablet;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-wrap3(Lcom/samsung/android/settings/display/FontPreviewTablet;Landroid/os/Bundle;)V

    .line 1414
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 1415
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1410
    :cond_0
    :goto_0
    return-void

    .line 1417
    :catch_0
    move-exception v0

    .line 1418
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "FontPreviewTablet"

    const-string/jumbo v2, "FlipFont dismiss/show ListLoad() - catch (Exception ex)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 1339
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    const v2, 0x7f0b14b7

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1341
    .local v0, "sMsg":Ljava/lang/String;
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1342
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1343
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1344
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask$1;-><init>(Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1351
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 1337
    return-void
.end method
