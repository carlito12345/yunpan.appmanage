.class public Lcom/yunpan/appmanage/bean/ShortcutInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private className:Ljava/lang/String;

.field private iconResId:I

.field private id:Ljava/lang/String;

.field private intent:Landroid/content/Intent;

.field private label:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/ShortcutInfo;->label:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/yunpan/appmanage/bean/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yunpan/appmanage/bean/ShortcutInfo;->packageName:Ljava/lang/String;

    .line 7
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yunpan/appmanage/bean/ShortcutInfo;->className:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/bean/ShortcutInfo;->className:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIconResId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yunpan/appmanage/bean/ShortcutInfo;->iconResId:I

    .line 2
    .line 3
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/bean/ShortcutInfo;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/bean/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/bean/ShortcutInfo;->label:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/bean/ShortcutInfo;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/ShortcutInfo;->className:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIconResId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/yunpan/appmanage/bean/ShortcutInfo;->iconResId:I

    .line 2
    .line 3
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/ShortcutInfo;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 2
    .line 3
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/ShortcutInfo;->label:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/ShortcutInfo;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
