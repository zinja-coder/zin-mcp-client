.class Lde/fgerbig/spacepeng/systems/DirectorSystem$7;
.super Lde/fgerbig/spacepeng/systems/DirectorSystem$QueueEvent;
.source "DirectorSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/fgerbig/spacepeng/systems/DirectorSystem;->playerKilled(Lde/fgerbig/spacepeng/events/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/fgerbig/spacepeng/systems/DirectorSystem;


# direct methods
.method constructor <init>(Lde/fgerbig/spacepeng/systems/DirectorSystem;F)V
    .locals 0
    .param p2, "x0"    # F

    .prologue
    .line 327
    iput-object p1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem$7;->this$0:Lde/fgerbig/spacepeng/systems/DirectorSystem;

    invoke-direct {p0, p1, p2}, Lde/fgerbig/spacepeng/systems/DirectorSystem$QueueEvent;-><init>(Lde/fgerbig/spacepeng/systems/DirectorSystem;F)V

    return-void
.end method


# virtual methods
.method run()V
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem$7;->this$0:Lde/fgerbig/spacepeng/systems/DirectorSystem;

    iget-object v0, v0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->eventManager:Lde/fgerbig/spacepeng/events/EventManager;

    const-string v1, "gameOver"

    iget-object v2, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem$7;->this$0:Lde/fgerbig/spacepeng/systems/DirectorSystem;

    iget-object v2, v2, Lde/fgerbig/spacepeng/systems/DirectorSystem;->player:Lde/fgerbig/spacepeng/components/Player;

    invoke-interface {v0, v1, v2}, Lde/fgerbig/spacepeng/events/EventManager;->submit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem$7;->this$0:Lde/fgerbig/spacepeng/systems/DirectorSystem;

    iget-object v0, v0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->hud:Lde/fgerbig/spacepeng/systems/HudRenderSystem;

    sget-object v1, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;->GAME_OVER:Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    iput-object v1, v0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->overlay:Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    .line 332
    return-void
.end method
