.class public final Lx9/o;
.super Landroidx/viewpager2/adapter/f;
.source "SourceFile"


# instance fields
.field public final m:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityAppDetails;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/f;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppDetails;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lx9/o;->m:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lx9/o;->m:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
