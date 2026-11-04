.class public final synthetic Lq/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx0/o;


# instance fields
.field public final synthetic a:Lq/g;


# direct methods
.method public synthetic constructor <init>(Lq/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/b0;->a:Lq/g;

    return-void
.end method


# virtual methods
.method public final j(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq/b0;->a:Lq/g;

    invoke-virtual {v0, p1}, Lq/g;->i(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
