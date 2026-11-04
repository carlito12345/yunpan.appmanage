.class public final Lv8/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:Lv8/a;

.field public final b:Lv8/c;


# direct methods
.method public constructor <init>(Lv8/a;Lv8/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv8/e;->a:Lv8/a;

    .line 5
    .line 6
    iput-object p2, p0, Lv8/e;->b:Lv8/c;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv8/e;->b:Lv8/c;

    .line 2
    .line 3
    iget-object v1, p0, Lv8/e;->a:Lv8/a;

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Lv8/c;->e(Lv8/a;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
