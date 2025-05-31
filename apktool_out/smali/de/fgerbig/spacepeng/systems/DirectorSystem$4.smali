.class Lde/fgerbig/spacepeng/systems/DirectorSystem$4;
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
    .line 285
    iput-object p1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem$4;->this$0:Lde/fgerbig/spacepeng/systems/DirectorSystem;

    invoke-direct {p0, p1, p2}, Lde/fgerbig/spacepeng/systems/DirectorSystem$QueueEvent;-><init>(Lde/fgerbig/spacepeng/systems/DirectorSystem;F)V

    return-void
.end method


# virtual methods
.method run()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem$4;->this$0:Lde/fgerbig/spacepeng/systems/DirectorSystem;

    iget-object v0, v0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->player:Lde/fgerbig/spacepeng/components/Player;

    sget-object v1, Lde/fgerbig/spacepeng/components/Player$State;->ALIVE:Lde/fgerbig/spacepeng/components/Player$State;

    invoke-virtual {v0, v1}, Lde/fgerbig/spacepeng/components/Player;->setState(Lde/fgerbig/spacepeng/components/Player$State;)V

    .line 289
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem$4;->this$0:Lde/fgerbig/spacepeng/systems/DirectorSystem;

    iget-object v0, v0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->hud:Lde/fgerbig/spacepeng/systems/HudRenderSystem;

    sget-object v1, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;->NONE:Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    iput-object v1, v0, Lde/fgerbig/spacepeng/systems/HudRenderSystem;->overlay:Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    .line 290
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem$4;->this$0:Lde/fgerbig/spacepeng/systems/DirectorSystem;

    iget-object v0, v0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->input:Lde/fgerbig/spacepeng/systems/PlayerInputSystem;

    invoke-virtual {v0}, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->setFireAllowed()V

    .line 291
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem$4;->this$0:Lde/fgerbig/spacepeng/systems/DirectorSystem;

    invoke-virtual {v0}, Lde/fgerbig/spacepeng/systems/DirectorSystem;->setupPlayer()V

    .line 292
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem$4;->this$0:Lde/fgerbig/spacepeng/systems/DirectorSystem;

    iget-object v0, v0, Lde/fgerbig/spacepeng/systems/DirectorSystem;->eventManager:Lde/fgerbig/spacepeng/events/EventManager;

    const-string v1, "enableAction"

    invoke-interface {v0, v1, p0}, Lde/fgerbig/spacepeng/events/EventManager;->submit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    return-void
.end method
