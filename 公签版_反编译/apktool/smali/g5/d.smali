.class public final Lg5/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg5/c;

.field public final b:La2/k1;

.field public final c:Landroid/content/ContentResolver;

.field public final d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgf/g;

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lgf/g;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lg5/c;La2/k1;Landroid/content/ContentResolver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lg5/d;->a:Lg5/c;

    .line 5
    .line 6
    iput-object p3, p0, Lg5/d;->b:La2/k1;

    .line 7
    .line 8
    iput-object p4, p0, Lg5/d;->c:Landroid/content/ContentResolver;

    .line 9
    .line 10
    iput-object p1, p0, Lg5/d;->d:Ljava/util/ArrayList;

    .line 11
    .line 12
    return-void
.end method
