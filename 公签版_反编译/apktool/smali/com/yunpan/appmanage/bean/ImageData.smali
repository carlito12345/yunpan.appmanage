.class public Lcom/yunpan/appmanage/bean/ImageData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bdFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx9/w3;",
            ">;"
        }
    .end annotation
.end field

.field public position:I

.field public userInfo:Lx9/n5;

.field public wpFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/bean/WpPathBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lx9/w3;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/ImageData;->userInfo:Lx9/n5;

    .line 3
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/ImageData;->wpFiles:Ljava/util/List;

    .line 4
    iput p1, p0, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 5
    iput-object p2, p0, Lcom/yunpan/appmanage/bean/ImageData;->bdFiles:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILx9/n5;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lx9/n5;",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/bean/WpPathBean;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/ImageData;->bdFiles:Ljava/util/List;

    .line 8
    iput p1, p0, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 9
    iput-object p2, p0, Lcom/yunpan/appmanage/bean/ImageData;->userInfo:Lx9/n5;

    .line 10
    iput-object p3, p0, Lcom/yunpan/appmanage/bean/ImageData;->wpFiles:Ljava/util/List;

    return-void
.end method
