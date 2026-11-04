.class public Lcom/yunpan/appmanage/bean/PasteInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public isDelete:Z

.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lx9/w3;",
            ">;"
        }
    .end annotation
.end field

.field public toDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lx9/w3;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/yunpan/appmanage/bean/PasteInfo;->isDelete:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yunpan/appmanage/bean/PasteInfo;->toDir:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yunpan/appmanage/bean/PasteInfo;->list:Ljava/util/ArrayList;

    .line 9
    .line 10
    return-void
.end method
