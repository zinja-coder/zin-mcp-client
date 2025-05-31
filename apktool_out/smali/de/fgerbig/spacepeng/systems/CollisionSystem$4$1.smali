.class Lde/fgerbig/spacepeng/systems/CollisionSystem$4$1;
.super Ljava/lang/Object;
.source "CollisionSystem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/fgerbig/spacepeng/systems/CollisionSystem$4;->handleCollision(Lcom/artemis/Entity;Lcom/artemis/Entity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/fgerbig/spacepeng/systems/CollisionSystem$4;

.field final synthetic val$sprite:Lde/fgerbig/spacepeng/components/Sprite;


# direct methods
.method constructor <init>(Lde/fgerbig/spacepeng/systems/CollisionSystem$4;Lde/fgerbig/spacepeng/components/Sprite;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$4$1;->this$1:Lde/fgerbig/spacepeng/systems/CollisionSystem$4;

    iput-object p2, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$4$1;->val$sprite:Lde/fgerbig/spacepeng/components/Sprite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$4$1;->val$sprite:Lde/fgerbig/spacepeng/components/Sprite;

    const-string v1, "player"

    iput-object v1, v0, Lde/fgerbig/spacepeng/components/Sprite;->name:Ljava/lang/String;

    .line 189
    return-void
.end method
