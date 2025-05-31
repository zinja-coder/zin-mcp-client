.class Lde/fgerbig/spacepeng/systems/SpriteRenderSystem$1;
.super Ljava/lang/Object;
.source "SpriteRenderSystem.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->inserted(Lcom/artemis/Entity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/artemis/Entity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;


# direct methods
.method constructor <init>(Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem$1;->this$0:Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/artemis/Entity;Lcom/artemis/Entity;)I
    .locals 4
    .param p1, "e1"    # Lcom/artemis/Entity;
    .param p2, "e2"    # Lcom/artemis/Entity;

    .prologue
    .line 135
    iget-object v2, p0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem$1;->this$0:Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;

    iget-object v2, v2, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->spr_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v2, p1}, Lcom/artemis/ComponentMapper;->getSafe(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/components/Sprite;

    .line 136
    .local v0, "s1":Lde/fgerbig/spacepeng/components/Sprite;
    iget-object v2, p0, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem$1;->this$0:Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;

    iget-object v2, v2, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem;->spr_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v2, p2}, Lcom/artemis/ComponentMapper;->getSafe(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v1

    check-cast v1, Lde/fgerbig/spacepeng/components/Sprite;

    .line 137
    .local v1, "s2":Lde/fgerbig/spacepeng/components/Sprite;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 138
    iget-object v2, v0, Lde/fgerbig/spacepeng/components/Sprite;->layer:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    iget-object v3, v1, Lde/fgerbig/spacepeng/components/Sprite;->layer:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    invoke-virtual {v2, v3}, Lde/fgerbig/spacepeng/components/Sprite$Layer;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    .line 140
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 132
    check-cast p1, Lcom/artemis/Entity;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/artemis/Entity;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lde/fgerbig/spacepeng/systems/SpriteRenderSystem$1;->compare(Lcom/artemis/Entity;Lcom/artemis/Entity;)I

    move-result v0

    return v0
.end method
