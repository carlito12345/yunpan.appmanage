.class public final Lcom/yunpan/appmanage/util/b;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lx9/y;


# direct methods
.method public constructor <init>(Lx9/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yunpan/appmanage/util/b;->e:Lx9/y;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 5

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    .line 6
    .line 7
    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    .line 8
    .line 9
    iget-wide p1, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 10
    .line 11
    iget-object v4, p0, Lcom/yunpan/appmanage/util/b;->e:Lx9/y;

    .line 12
    .line 13
    iput-wide v0, v4, Lx9/y;->c:J

    .line 14
    .line 15
    iput-wide v2, v4, Lx9/y;->d:J

    .line 16
    .line 17
    iput-wide p1, v4, Lx9/y;->e:J

    .line 18
    .line 19
    add-long/2addr v0, v2

    .line 20
    add-long/2addr v0, p1

    .line 21
    iput-wide v0, v4, Lx9/y;->b:J

    .line 22
    .line 23
    :cond_0
    return-void
.end method
