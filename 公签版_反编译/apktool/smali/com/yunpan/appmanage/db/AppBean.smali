.class public Lcom/yunpan/appmanage/db/AppBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public apkParentPath:Ljava/lang/String;

.field public apkPath:Ljava/lang/String;

.field public dataDir:Ljava/lang/String;

.field public isCanStart:Z

.field public isDisable:Z

.field public isHide:Z

.field public isSystem:Z

.field public isUnInstall:Z

.field public name:Ljava/lang/String;

.field public pack:Ljava/lang/String;

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v2, ""

    iput-object v2, p0, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    const/4 v3, -0x1

    .line 11
    iput v3, p0, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 12
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v4}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 13
    sget-object v4, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 14
    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 15
    const-class v7, Landroid/content/res/AssetManager;

    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/AssetManager;

    .line 16
    const-string v9, "addAssetPath"

    new-array v10, v1, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v0

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v6, v9, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    move-object v8, v5

    :goto_0
    if-nez v8, :cond_0

    goto :goto_1

    .line 17
    :cond_0
    new-instance v5, Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v5, v8, v6, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 18
    :cond_1
    :goto_1
    :try_start_1
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    sget-object v7, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 20
    iget-object v7, v7, Lcom/yunpan/appmanage/util/w;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-static {v4}, Lcom/yunpan/appmanage/util/a0;->f(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz v5, :cond_3

    .line 22
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-nez v6, :cond_2

    .line 23
    sget-object v6, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 24
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080239

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_4

    .line 25
    :cond_2
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_2

    .line 26
    :cond_3
    sget-object v6, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 27
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 28
    iget-object v6, v6, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v6}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 29
    :goto_2
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 30
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 31
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v9

    if-eq v9, v3, :cond_4

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_3

    :cond_4
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 32
    :goto_3
    invoke-static {v7, v8, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 33
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 34
    invoke-virtual {v6, v0, v0, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 35
    invoke-virtual {v6, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 36
    sget-object v6, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 37
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 38
    iget v6, v6, Lcom/yunpan/appmanage/util/k;->R:I

    invoke-static {v3, v6, v6, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 39
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 40
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v6, v4, v8, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 41
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 42
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 43
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    :try_start_2
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    nop

    goto :goto_5

    .line 45
    :goto_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_5
    if-eqz v5, :cond_6

    .line 46
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v3, :cond_6

    .line 47
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    goto :goto_6

    .line 48
    :cond_6
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_7

    .line 49
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    goto :goto_6

    .line 50
    :cond_7
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    :goto_6
    if-eqz v5, :cond_8

    .line 51
    invoke-virtual {v5}, Landroid/content/res/Resources;->flushLayoutCache()V

    .line 52
    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->close()V

    .line 53
    :cond_8
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 54
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v3, p0, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 55
    iput-object v2, p0, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 56
    :cond_9
    iget-object v3, p0, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 57
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 58
    iget-object v3, p0, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    const-string v4, "/data/app/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 59
    iget-object v3, p0, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 60
    array-length v5, v3

    const/4 v6, 0x4

    if-le v5, v6, :cond_a

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v3, v1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    goto :goto_7

    .line 62
    :cond_a
    iput-object v2, p0, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    .line 63
    :cond_b
    :goto_7
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, p0, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 64
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v2, p0, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 65
    iget-boolean v2, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    xor-int/2addr v2, v1

    iput-boolean v2, p0, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 66
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_c

    .line 67
    iput-boolean v1, p0, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    goto :goto_8

    .line 68
    :cond_c
    iput-boolean v0, p0, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    :goto_8
    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-nez v2, :cond_d

    .line 69
    iput-boolean v1, p0, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    goto :goto_9

    .line 70
    :cond_d
    iput-boolean v0, p0, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 71
    :goto_9
    :try_start_3
    const-class v2, Landroid/content/pm/ApplicationInfo;

    const-string v3, "privateFlags"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 73
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    and-int/2addr v2, v1

    if-eqz v2, :cond_e

    .line 74
    iput-boolean v1, p0, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 75
    iput-boolean v0, p0, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    .line 76
    :catch_2
    :try_start_4
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 77
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 78
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 79
    iput-boolean v0, p0, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 80
    :cond_e
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 81
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 82
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_f

    .line 83
    iput-boolean v0, p0, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    goto :goto_a

    .line 84
    :cond_f
    iput-boolean v1, p0, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    :goto_a
    return-void

    .line 85
    :catch_3
    iput-boolean v1, p0, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 86
    iput-boolean v0, p0, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    .line 7
    iput-object p1, p0, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    return-void
.end method
