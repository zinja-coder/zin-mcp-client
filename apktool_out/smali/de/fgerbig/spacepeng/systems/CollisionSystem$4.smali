.class Lde/fgerbig/spacepeng/systems/CollisionSystem$4;
.super Ljava/lang/Object;
.source "CollisionSystem.java"

# interfaces
.implements Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/fgerbig/spacepeng/systems/CollisionSystem;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;


# direct methods
.method constructor <init>(Lde/fgerbig/spacepeng/systems/CollisionSystem;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$4;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleCollision(Lcom/artemis/Entity;Lcom/artemis/Entity;)V
    .locals 8
    .param p1, "player"    # Lcom/artemis/Entity;
    .param p2, "coin"    # Lcom/artemis/Entity;

    .prologue
    const/high16 v7, 0x40a00000    # 5.0f

    .line 165
    const/4 v1, 0x0

    .line 167
    .local v1, "health":F
    invoke-virtual {p2}, Lcom/artemis/Entity;->deleteFromWorld()V

    .line 168
    sget-object v5, Lde/fgerbig/spacepeng/SpacePeng;->soundManager:Lde/fgerbig/spacepeng/services/SoundManager;

    sget-object v6, Lde/fgerbig/spacepeng/assets/SoundKey;->BOING:Lde/fgerbig/spacepeng/assets/SoundKey;

    invoke-virtual {v5, v6}, Lde/fgerbig/spacepeng/services/SoundManager;->play(Lde/fgerbig/spacepeng/assets/SoundKey;)V

    .line 170
    sget-object v6, Lde/fgerbig/spacepeng/systems/CollisionSystem$6;->$SwitchMap$de$fgerbig$spacepeng$components$powerup$Coin$Type:[I

    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$4;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v5, v5, Lde/fgerbig/spacepeng/systems/CollisionSystem;->coin_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v5, p2}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v5

    check-cast v5, Lde/fgerbig/spacepeng/components/powerup/Coin;

    iget-object v5, v5, Lde/fgerbig/spacepeng/components/powerup/Coin;->type:Lde/fgerbig/spacepeng/components/powerup/Coin$Type;

    invoke-virtual {v5}, Lde/fgerbig/spacepeng/components/powerup/Coin$Type;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    .line 194
    :goto_0
    return-void

    .line 172
    :pswitch_0
    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$4;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v5, v5, Lde/fgerbig/spacepeng/systems/CollisionSystem;->player_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v5, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v2

    check-cast v2, Lde/fgerbig/spacepeng/components/Player;

    .line 173
    .local v2, "p":Lde/fgerbig/spacepeng/components/Player;
    iget v5, v2, Lde/fgerbig/spacepeng/components/Player;->lives:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v2, Lde/fgerbig/spacepeng/components/Player;->lives:I

    goto :goto_0

    .line 176
    .end local v2    # "p":Lde/fgerbig/spacepeng/components/Player;
    :pswitch_1
    new-instance v0, Lde/fgerbig/spacepeng/components/powerup/DoubleShot;

    invoke-direct {v0}, Lde/fgerbig/spacepeng/components/powerup/DoubleShot;-><init>()V

    .line 177
    .local v0, "doubleShot":Lde/fgerbig/spacepeng/components/powerup/DoubleShot;
    iput v7, v0, Lde/fgerbig/spacepeng/components/powerup/DoubleShot;->delay:F

    .line 178
    invoke-virtual {p1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    goto :goto_0

    .line 181
    .end local v0    # "doubleShot":Lde/fgerbig/spacepeng/components/powerup/DoubleShot;
    :pswitch_2
    new-instance v3, Lde/fgerbig/spacepeng/components/powerup/Shield;

    invoke-direct {v3}, Lde/fgerbig/spacepeng/components/powerup/Shield;-><init>()V

    .line 182
    .local v3, "shield":Lde/fgerbig/spacepeng/components/powerup/Shield;
    iput v7, v3, Lde/fgerbig/spacepeng/components/powerup/Shield;->delay:F

    .line 183
    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$4;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v5, v5, Lde/fgerbig/spacepeng/systems/CollisionSystem;->spr_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v5, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v4

    check-cast v4, Lde/fgerbig/spacepeng/components/Sprite;

    .line 184
    .local v4, "sprite":Lde/fgerbig/spacepeng/components/Sprite;
    const-string v5, "playershield"

    iput-object v5, v4, Lde/fgerbig/spacepeng/components/Sprite;->name:Ljava/lang/String;

    .line 185
    new-instance v5, Lde/fgerbig/spacepeng/systems/CollisionSystem$4$1;

    invoke-direct {v5, p0, v4}, Lde/fgerbig/spacepeng/systems/CollisionSystem$4$1;-><init>(Lde/fgerbig/spacepeng/systems/CollisionSystem$4;Lde/fgerbig/spacepeng/components/Sprite;)V

    iput-object v5, v3, Lde/fgerbig/spacepeng/components/powerup/Shield;->onExpiry:Ljava/lang/Runnable;

    .line 191
    invoke-virtual {p1}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
