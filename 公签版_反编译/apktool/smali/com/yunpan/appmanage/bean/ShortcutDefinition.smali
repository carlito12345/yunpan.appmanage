.class public Lcom/yunpan/appmanage/bean/ShortcutDefinition;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private className:Ljava/lang/String;

.field private iconRes:I

.field private id:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/ShortcutDefinition;->id:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yunpan/appmanage/bean/ShortcutDefinition;->label:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/yunpan/appmanage/bean/ShortcutDefinition;->iconRes:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/yunpan/appmanage/bean/ShortcutDefinition;->packageName:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/yunpan/appmanage/bean/ShortcutDefinition;->className:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/bean/ShortcutDefinition;->className:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIconRes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yunpan/appmanage/bean/ShortcutDefinition;->iconRes:I

    .line 2
    .line 3
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/bean/ShortcutDefinition;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/bean/ShortcutDefinition;->label:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/bean/ShortcutDefinition;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
